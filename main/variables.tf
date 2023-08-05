variable "rg_name" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."  
  default = "techslate-ade-rg3071"
}

variable "location" {
    description =  "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."    
    default = "northeurope"  
}

variable "asp_name" {
  description = ""
  default = "techslate-asp-3071"
}

variable "webapp_name" {
  description = ""
  default = "techslate-webapp-3071"
}

variable "docker_image" {
  default = "sonarqube:latest"
}

variable "container_name" {
  default = "container-ts-3071"
  description = ""
}
