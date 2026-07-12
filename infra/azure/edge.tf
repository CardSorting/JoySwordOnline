resource "azurerm_subnet" "server" {
  name                 = "server"
  resource_group_name  = azurerm_resource_group.joysword.name
  virtual_network_name = azurerm_virtual_network.joysword.name
  address_prefixes     = ["10.42.1.0/24"]
}

resource "azurerm_public_ip" "edge" {
  name                = "joysword-edge-ipv4"
  location            = azurerm_resource_group.joysword.location
  resource_group_name = azurerm_resource_group.joysword.name
  allocation_method   = "Static"
  sku                 = "Standard"
  domain_name_label   = var.edge_dns_label
  tags                = local.common_tags
}

resource "azurerm_network_security_group" "edge" {
  name                = "joysword-edge-nsg"
  location            = azurerm_resource_group.joysword.location
  resource_group_name = azurerm_resource_group.joysword.name
  tags                = local.common_tags

  dynamic "security_rule" {
    for_each = toset(var.public_game_tcp_ports)
    content {
      name                       = "AllowGameTcp${security_rule.value}"
      priority                   = 1000 + index(var.public_game_tcp_ports, security_rule.value)
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = tostring(security_rule.value)
      source_address_prefix      = "Internet"
      destination_address_prefix = "*"
    }
  }

  dynamic "security_rule" {
    for_each = toset(var.public_game_udp_ports)
    content {
      name                       = "AllowGameUdp${security_rule.value}"
      priority                   = 1100 + index(var.public_game_udp_ports, security_rule.value)
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Udp"
      source_port_range          = "*"
      destination_port_range     = tostring(security_rule.value)
      source_address_prefix      = "Internet"
      destination_address_prefix = "*"
    }
  }

  # Allow SQL Server port from App Service integration subnet
  security_rule {
    name                       = "AllowSqlFromWeb"
    priority                   = 1300
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "1433"
    source_address_prefix      = "10.42.2.0/24"
    destination_address_prefix = "*"
  }

  # Allow secure RDP access from operator IP
  security_rule {
    name                       = "AllowRdp"
    priority                   = 1400
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = var.operator_ip
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_interface" "edge" {
  name                           = "joysword-edge-nic"
  location                       = azurerm_resource_group.joysword.location
  resource_group_name            = azurerm_resource_group.joysword.name
  accelerated_networking_enabled = var.enable_accelerated_networking
  tags                           = local.common_tags

  ip_configuration {
    name                          = "primary"
    subnet_id                     = azurerm_subnet.server.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.42.1.10"
    public_ip_address_id          = azurerm_public_ip.edge.id
  }
}

resource "azurerm_network_interface_security_group_association" "edge" {
  network_interface_id      = azurerm_network_interface.edge.id
  network_security_group_id = azurerm_network_security_group.edge.id
}

data "azurerm_key_vault" "joysword" {
  name                = var.key_vault_name
  resource_group_name = azurerm_resource_group.joysword.name
}

data "azurerm_key_vault_secret" "vm_admin_password" {
  name         = "db-password"
  key_vault_id = data.azurerm_key_vault.joysword.id
}

resource "azurerm_windows_virtual_machine" "server" {
  name                      = "joysword-server"
  location                  = azurerm_resource_group.joysword.location
  resource_group_name       = azurerm_resource_group.joysword.name
  network_interface_ids     = [azurerm_network_interface.edge.id]
  size                      = var.vm_size
  zone                      = var.vm_zone
  admin_username            = var.admin_username
  admin_password            = data.azurerm_key_vault_secret.vm_admin_password.value
  patch_mode                = var.vm_patch_mode
  patch_assessment_mode     = var.vm_patch_mode == "AutomaticByPlatform" ? "AutomaticByPlatform" : "ImageDefault"
  automatic_updates_enabled = var.vm_patch_mode != "Manual"
  tags                      = local.common_tags

  os_disk {
    name                 = "joysword-server-os"
    caching              = "ReadWrite"
    storage_account_type = var.os_disk_type
  }

  source_image_id = var.server_source_image_id

  identity {
    type = "SystemAssigned"
  }

  boot_diagnostics {}

  lifecycle {
    # The image is rebuilt out-of-band; ignore drift so patching/agent updates
    # on the live VM do not force a destructive replace.
    ignore_changes = [source_image_id]
  }
}

resource "azurerm_managed_disk" "server_data" {
  name                 = "joysword-server-data"
  location             = azurerm_resource_group.joysword.location
  resource_group_name  = azurerm_resource_group.joysword.name
  storage_account_type = var.data_disk_type
  create_option        = "Empty"
  disk_size_gb         = var.data_disk_size_gb
  zone                 = var.vm_zone
  tags                 = local.common_tags

  lifecycle {
    # The data disk carries the SQL Server databases; never allow an implicit
    # destroy/replace to wipe game state.
    prevent_destroy = true
  }
}

resource "azurerm_virtual_machine_data_disk_attachment" "server_data" {
  managed_disk_id    = azurerm_managed_disk.server_data.id
  virtual_machine_id = azurerm_windows_virtual_machine.server.id
  lun                = 0
  caching            = "ReadWrite"
}

resource "azurerm_role_assignment" "server_blob_reader" {
  scope                = azurerm_storage_account.artifacts.id
  role_definition_name = "Storage Blob Data Reader"
  principal_id         = azurerm_windows_virtual_machine.server.identity[0].principal_id
}

