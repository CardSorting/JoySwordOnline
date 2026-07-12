output "resource_group_name" {
  value = azurerm_resource_group.joysword.name
}


output "artifact_storage_account_name" {
  value = azurerm_storage_account.artifacts.name
}


output "key_vault_name" {
  value = azurerm_key_vault.joysword.name
}

output "web_app_url" {
  value = "https://${azurerm_linux_web_app.web.default_hostname}"
}

output "web_app_name" {
  value = azurerm_linux_web_app.web.name
}

output "postgres_server_fqdn" {
  value = azurerm_postgresql_flexible_server.web.fqdn
}

output "server_public_ip" {
  value       = azurerm_public_ip.edge.ip_address
  description = "The public IP address of the game-server edge VM."
}

output "server_public_fqdn" {
  value       = azurerm_public_ip.edge.fqdn
  description = "The public FQDN of the game-server edge VM."
}

output "server_private_ip" {
  value       = azurerm_network_interface.edge.private_ip_address
  description = "The private IP address of the game-server edge VM."
}

output "server_vm_name" {
  value       = azurerm_windows_virtual_machine.server.name
  description = "The name of the Windows Server VM."
}

output "health_command" {
  value       = "az vm run-command invoke --resource-group ${azurerm_resource_group.joysword.name} --name ${azurerm_windows_virtual_machine.server.name} --command-id RunPowerShellScript --scripts 'python D:\\JoySword\\Server\\Elsword\\scripts\\db-healthcheck.py --allow-tcp-only'"
  description = "Invoke the database and server health check on the Windows VM."
}
