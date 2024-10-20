# outputs.tf

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "public_ip_address" {
  value = azurerm_public_ip.publicip.ip_address
}

# Output for Ansible host VM's public IP address
output "ansible_vm_public_ip" {
  value = azurerm_public_ip.ansible_publicip.ip_address
}

# Output for Ansible host VM's name
output "ansible_vm_name" {
  value = azurerm_linux_virtual_machine.ansible_vm.name # Output for Ansible VM's name
}

# output "mysql_server_name" {
#   value = azurerm_mysql_server.mysql.name
# }

# output "mysql_server_fqdn" {
#   value = azurerm_mysql_server.mysql.fqdn
# }

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "storage_account_primary_web_endpoint" {
  value = azurerm_storage_account.storage.primary_web_endpoint
}