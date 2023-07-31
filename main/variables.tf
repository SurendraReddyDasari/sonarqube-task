variable "rg_name" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."  
  default = "techslate-ade-rg307"
}

variable "location" {
    description =  "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."    
    default = "northeurope"  
}

variable "asp_name" {
  description = ""
  default = "techslate-asp-307"
}

variable "webapp_name" {
  description = ""
  default = "techslate-webapp-307"
}

variable "docker_image" {
  default = "DOCKER|sonarqube:latest"
}

variable "container_name" {
  default = "container-ts-307"
  description = ""
}

variable "database_name" {
  default = "database-ts-307"
  description = ""
}

variable "db_firewall_rule_name" {
  default = "firewall-ts-307"
  description = ""
}

variable "db_server_name" {
  description = "Name of the PostgreSQL server"
  default     = "ts-db-server-307"

  
}