# variables.tf

variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default     = "urbanconnect"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "eastus"
}

# variable "db_username" {
#   description = "Username for the MySQL server"
# }

# variable "db_password" {
#   description = "Password for the MySQL server"
# }

# variable "db_name" {
#   description = "Name of the database"
#   default     = "myapp"
# }