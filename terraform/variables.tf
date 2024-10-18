variable "prefix" {
  description = "A prefix used for all resources in this example"
  type        = string
  default     = "myapp"
}

variable "location" {
  description = "The Azure location where all resources in this example should be created"
  type        = string
  default     = "eastus"
}

variable "kubernetes_version" {
  description = "Version of Kubernetes to use for the AKS cluster"
  type        = string
  default     = "1.21.2"
}

variable "node_count" {
  description = "The initial quantity of nodes for the node pool"
  type        = number
  default     = 3
}

variable "vm_size" {
  description = "The size of the Virtual Machine"
  type        = string
  default     = "B1s"
}

variable "db_name" {
  description = "Name of the database"
  type        = string
  default     = "myappdb"
}

variable "db_admin_login" {
  description = "Username for the database"
  type        = string
  default     = "myadmin"
}

variable "db_admin_password" {
  description = "Password for the database admin"
  type        = string
  sensitive   = true
}