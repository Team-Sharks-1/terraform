# outputs.tf

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "public_ip_address" {
  value = azurerm_public_ip.publicip.ip_address
}

# output "mysql_server_name" {
#   value = azurerm_mysql_server.mysql.name
# }

output "mysql_server_fqdn" {
  value = azurerm_mysql_server.mysql.fqdn
}

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "storage_account_primary_web_endpoint" {
  value = azurerm_storage_account.storage.primary_web_endpoint
}