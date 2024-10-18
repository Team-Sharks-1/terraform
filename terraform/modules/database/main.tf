# modules/database/main.tf

resource "azurerm_sql_server" "server" {
  name                         = "${var.prefix}-sqlsvr"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.db_admin_login
  administrator_login_password = var.db_admin_password
}

resource "azurerm_sql_database" "database" {
  name                = var.db_name
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = azurerm_sql_server.server.name
  edition             = "Standard"
  zone_redundant      = true

  tags = {
    environment = "production"
  }
}

resource "azurerm_sql_firewall_rule" "allow_azure_services" {
  name                = "AllowAzureServices"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_sql_server.server.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}

output "server_name" {
  value = azurerm_sql_server.server.name
}

output "server_fqdn" {
  value = azurerm_sql_server.server.fully_qualified_domain_name
}

variable "prefix" {}
variable "location" {}
variable "resource_group_name" {}
variable "subnet_id" {}
variable "db_name" {}
variable "db_admin_login" {}
variable "db_admin_password" {}