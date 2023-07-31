variable "rg_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}


variable "db_firewall_rule_name" {
  type        = string
  description = "Name of the firewall rule name"
}


variable "db_server_name" {
  description = "Name of the PostgreSQL server"
  type        = string

  
}