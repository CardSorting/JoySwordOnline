locals {
  common_tags = {
    application = "joysword"
    environment = "production"
    managed_by  = "terraform"
  }
}

resource "azurerm_resource_group" "joysword" {
  name     = var.resource_group_name
  location = var.location
  tags     = local.common_tags
}

resource "azurerm_virtual_network" "joysword" {
  name                = "joysword-vnet"
  location            = azurerm_resource_group.joysword.location
  resource_group_name = azurerm_resource_group.joysword.name
  address_space       = ["10.42.0.0/16"]
  tags                = local.common_tags
}

resource "azurerm_storage_account" "artifacts" {
  name                            = var.artifact_storage_account_name
  resource_group_name             = azurerm_resource_group.joysword.name
  location                        = azurerm_resource_group.joysword.location
  account_tier                    = "Standard"
  account_replication_type        = var.artifact_replication_type
  account_kind                    = "StorageV2"
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false
  shared_access_key_enabled       = false
  public_network_access_enabled   = true
  https_traffic_only_enabled      = true
  tags                            = local.common_tags

  blob_properties {
    versioning_enabled  = true
    change_feed_enabled = true

    delete_retention_policy {
      days = var.blob_retention_days
    }

    container_delete_retention_policy {
      days = var.blob_retention_days
    }
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_storage_container" "releases" {
  name                  = "releases"
  storage_account_id    = azurerm_storage_account.artifacts.id
  container_access_type = "private"
}

resource "azurerm_storage_container" "downloads" {
  name                  = "downloads"
  storage_account_id    = azurerm_storage_account.artifacts.id
  container_access_type = "private"
}

resource "azurerm_storage_container" "backups" {
  name                  = "backups"
  storage_account_id    = azurerm_storage_account.artifacts.id
  container_access_type = "private"
}

resource "azurerm_role_assignment" "operator_artifact_writer" {
  scope                = azurerm_storage_account.artifacts.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = var.operator_object_id
}

resource "azurerm_key_vault" "joysword" {
  name                       = var.key_vault_name
  location                   = azurerm_resource_group.joysword.location
  resource_group_name        = azurerm_resource_group.joysword.name
  tenant_id                  = var.tenant_id
  sku_name                   = "standard"
  rbac_authorization_enabled = true
  purge_protection_enabled   = true
  soft_delete_retention_days = 30
  tags                       = local.common_tags

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_role_assignment" "operator_secret_officer" {
  scope                = azurerm_key_vault.joysword.id
  role_definition_name = "Key Vault Secrets Officer"
  principal_id         = var.operator_object_id
}

# Alert action group — also referenced by web HTTP-5xx alert in web.tf.
resource "azurerm_monitor_action_group" "operator" {
  name                = "joysword-operator"
  resource_group_name = azurerm_resource_group.joysword.name
  short_name          = "joysword"

  email_receiver {
    name          = "operator"
    email_address = var.alert_email
  }
}
