resource "azurerm_postgresql_server" "db" {
  name                          = var.database_name
  location                      = var.location
  resource_group_name           = var.rg_name
  sku_name                      = var.sku_name
  storage_mb                    = var.storage_mb
  version                       = "10"
  administrator_login           = var.administrator_login
  administrator_login_password  = var.administrator_login_password
  ssl_enforcement_enabled       = true
  
}