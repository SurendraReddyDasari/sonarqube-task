data "azurerm_client_config" "current" {}

module "resource_group" {    
  source    = "../modules/resourcegroup"
  rg_name   = var.rg_name
  location  = var.location  
  
}

module "app_service_plan" {    
  depends_on = [ module.resource_group ]
  source    = "../modules/appserviceplan"
  asp_name  = var.asp_name
  location  = var.location  
  rg_name   = var.rg_name
}

module "web_app" {  
  depends_on                    = [ module.resource_group ]
  source                        = "../modules/webapp"
  webapp_name                   = var.webapp_name
  rg_name                       = var.rg_name
  location                      = var.location
  asp_name                      = var.asp_name
  service_plan_id               = module.app_service_plan.app_service_id
  linux_fx_version              = "DOCKER|${var.docker_image}"

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    "WEBSITES_PORT"                      = "9000" 
    "WEBSITES_CONTAINER_START_TIME_LIMIT" = "1800"
    "DOCKER_CUSTOM_IMAGE_NAME"           = var.docker_image
    
  }
}

resource "azurerm_service_plan" "azurerm_linux_web_app" {
  name                = var.container_name
  resource_group_name = var.rg_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "S1"

}

