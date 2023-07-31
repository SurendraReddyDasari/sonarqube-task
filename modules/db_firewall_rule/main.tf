resource "azurerm_postgresql_firewall_rule" "fw_rule" {
  name                = var.db_firewall_rule_name
  resource_group_name = var.rg_name
  server_name         = var.db_server_name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "255.255.255.255" # Adjust as needed for your network security requirements
}