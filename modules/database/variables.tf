
variable "location" {
  description = "Azure Region for the Database Server"
  type        = string
}

variable "database_name" {
  description = "Name of the Azure Database for PostgreSQL"
  type        = string
}

variable "rg_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "administrator_login" {
  description = "Administrator login for the PostgreSQL server"
  type        = string
  default     = "myadmin"
}

variable "administrator_login_password" {
  description = "Administrator login password for the PostgreSQL server"
  type        = string
  default     = "Passowrd@123"
}

variable "sku_name" {
  description = "SKU tier for the PostgreSQL server"
  default     = "GP_Gen5_2"
}

variable "storage_mb" {
  description = "Storage size in MB for the PostgreSQL server"
  default     = 5120
}

