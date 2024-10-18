output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "kubernetes_cluster_name" {
  value = module.aks.kubernetes_cluster_name
}

output "acr_login_server" {
  value = module.acr.acr_login_server
}

output "database_server_name" {
  value = module.database.server_name
}

output "database_server_fqdn" {
  value = module.database.server_fqdn
}
