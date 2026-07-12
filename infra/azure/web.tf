resource "azurerm_subnet" "web" {
  name                 = "web-integration"
  resource_group_name  = azurerm_resource_group.joysword.name
  virtual_network_name = azurerm_virtual_network.joysword.name
  address_prefixes     = ["10.42.2.0/24"]

  delegation {
    name = "app-service"
    service_delegation {
      name    = "Microsoft.Web/serverFarms"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
}

resource "azurerm_subnet" "postgres" {
  name                 = "postgres"
  resource_group_name  = azurerm_resource_group.joysword.name
  virtual_network_name = azurerm_virtual_network.joysword.name
  address_prefixes     = ["10.42.3.0/24"]
  service_endpoints    = ["Microsoft.Storage"]

  delegation {
    name = "postgres-flexible-server"
    service_delegation {
      name = "Microsoft.DBforPostgreSQL/flexibleServers"
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/join/action",
      ]
    }
  }
}

resource "azurerm_private_dns_zone" "postgres" {
  name                = "joysword.postgres.database.azure.com"
  resource_group_name = azurerm_resource_group.joysword.name
  tags                = local.common_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "postgres" {
  name                  = "joysword-postgres-vnet"
  private_dns_zone_name = azurerm_private_dns_zone.postgres.name
  virtual_network_id    = azurerm_virtual_network.joysword.id
  resource_group_name   = azurerm_resource_group.joysword.name
  registration_enabled  = false
  tags                  = local.common_tags
}

resource "random_password" "postgres_admin" {
  length           = 40
  special          = true
  override_special = "_-"
}

resource "random_password" "auth_rate_limit_secret" {
  length  = 64
  special = false
}

resource "azurerm_postgresql_flexible_server" "web" {
  name                          = var.postgres_server_name
  resource_group_name           = azurerm_resource_group.joysword.name
  location                      = azurerm_resource_group.joysword.location
  version                       = "16"
  zone                          = "1"
  delegated_subnet_id           = azurerm_subnet.postgres.id
  private_dns_zone_id           = azurerm_private_dns_zone.postgres.id
  public_network_access_enabled = false
  administrator_login           = var.postgres_administrator_login
  administrator_password        = random_password.postgres_admin.result
  sku_name                      = var.postgres_sku_name
  storage_mb                    = 32768
  auto_grow_enabled             = true
  backup_retention_days         = 14
  geo_redundant_backup_enabled  = false
  tags                          = local.common_tags

  maintenance_window {
    day_of_week  = 0
    start_hour   = 9
    start_minute = 0
  }

  lifecycle {
    prevent_destroy = true
  }

  depends_on = [azurerm_private_dns_zone_virtual_network_link.postgres]
}

resource "azurerm_postgresql_flexible_server_database" "web" {
  name      = "joysword_web"
  server_id = azurerm_postgresql_flexible_server.web.id
  collation = "en_US.utf8"
  charset   = "UTF8"
}

resource "azurerm_key_vault_secret" "postgres_connection" {
  name = "web-postgres-url"
  value = format(
    "postgresql://%s:%s@%s:5432/%s",
    var.postgres_administrator_login,
    random_password.postgres_admin.result,
    azurerm_postgresql_flexible_server.web.fqdn,
    azurerm_postgresql_flexible_server_database.web.name
  )
  key_vault_id = azurerm_key_vault.joysword.id
  content_type = "PostgreSQL connection string for the JoySword web application"

  depends_on = [azurerm_role_assignment.operator_secret_officer]
}

resource "azurerm_key_vault_secret" "auth_rate_limit_secret" {
  name         = "web-auth-rate-limit-secret"
  value        = random_password.auth_rate_limit_secret.result
  key_vault_id = azurerm_key_vault.joysword.id
  content_type = "JoySword web authentication rate-limit HMAC material"

  depends_on = [azurerm_role_assignment.operator_secret_officer]
}

resource "azurerm_service_plan" "web" {
  name                = "joysword-web-plan"
  resource_group_name = azurerm_resource_group.joysword.name
  location            = azurerm_resource_group.joysword.location
  os_type             = "Linux"
  sku_name            = var.web_app_service_sku
  tags                = local.common_tags
}

resource "azurerm_linux_web_app" "web" {
  name                      = var.web_app_name
  resource_group_name       = azurerm_resource_group.joysword.name
  location                  = azurerm_resource_group.joysword.location
  service_plan_id           = azurerm_service_plan.web.id
  virtual_network_subnet_id = azurerm_subnet.web.id
  https_only                = true
  tags                      = local.common_tags

  identity {
    type = "SystemAssigned"
  }

  logs {
    detailed_error_messages = false
    failed_request_tracing  = false

    application_logs {
      file_system_level = "Information"
    }

    http_logs {
      file_system {
        retention_in_days = 3
        retention_in_mb   = 100
      }
    }
  }

  site_config {
    always_on                         = true
    health_check_path                 = "/api/health"
    health_check_eviction_time_in_min = 5
    minimum_tls_version               = "1.2"
    scm_minimum_tls_version           = "1.2"
    ftps_state                        = "Disabled"
    vnet_route_all_enabled            = true
    app_command_line                  = "node scripts/migrate.mjs && node server.js"

    application_stack {
      node_version = "20-lts"
    }
  }

  app_settings = {
    NODE_ENV                            = "production"
    NEXT_PUBLIC_SITE_URL                = "https://${var.web_app_name}.azurewebsites.net"
    WEB_ALLOWED_ORIGINS                 = "https://${var.web_app_name}.azurewebsites.net"
    POSTGRES_URL                        = "@Microsoft.KeyVault(SecretUri=${azurerm_key_vault_secret.postgres_connection.id})"
    POSTGRES_SSL                        = "true"
    POSTGRES_POOL_MAX                   = "10"
    AUTH_RATE_LIMIT_SECRET              = "@Microsoft.KeyVault(SecretUri=${azurerm_key_vault_secret.auth_rate_limit_secret.id})"
    DOWNLOAD_STORAGE_ACCOUNT            = azurerm_storage_account.artifacts.name
    DOWNLOAD_STORAGE_CONTAINER          = azurerm_storage_container.downloads.name
    MSSQL_HOST                          = azurerm_network_interface.edge.private_ip_address
    MSSQL_PORT                          = "1433"
    MSSQL_USER                          = "sa"
    MSSQL_PASSWORD                      = "@Microsoft.KeyVault(SecretUri=https://${azurerm_key_vault.joysword.name}.vault.azure.net/secrets/db-password)"
    MSSQL_ENCRYPT                       = "false"
    MSSQL_TRUST_SERVER_CERTIFICATE      = "true"
    JOYSWORD_STARTING_CASH              = tostring(var.web_starting_cash)
    WEBSITE_NODE_DEFAULT_VERSION        = "~20"
    # OneDeploy must extract the combined API + SPA package into wwwroot.
    # A literal "1" can leave Linux workers pinned to an older mounted ZIP.
    WEBSITE_RUN_FROM_PACKAGE            = "0"
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
  }
}

resource "azurerm_role_assignment" "web_secret_reader" {
  scope                = azurerm_key_vault.joysword.id
  role_definition_name = "Key Vault Secrets User"
  principal_id         = azurerm_linux_web_app.web.identity[0].principal_id
}

resource "azurerm_role_assignment" "web_download_delegator" {
  scope                = azurerm_storage_account.artifacts.id
  role_definition_name = "Storage Blob Delegator"
  principal_id         = azurerm_linux_web_app.web.identity[0].principal_id
}

resource "azurerm_role_assignment" "web_download_reader" {
  scope                = azurerm_storage_container.downloads.id
  role_definition_name = "Storage Blob Data Reader"
  principal_id         = azurerm_linux_web_app.web.identity[0].principal_id
}

resource "azurerm_monitor_metric_alert" "web_http_errors" {
  name                = "joysword-web-http-5xx"
  resource_group_name = azurerm_resource_group.joysword.name
  scopes              = [azurerm_linux_web_app.web.id]
  description         = "JoySword web application returned server errors."
  frequency           = "PT5M"
  window_size         = "PT15M"
  severity            = 2

  criteria {
    metric_namespace = "Microsoft.Web/sites"
    metric_name      = "Http5xx"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = 5
  }

  action {
    action_group_id = azurerm_monitor_action_group.operator.id
  }
}
