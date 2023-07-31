output "firewall_rule_info" {
  description = "Azure PostgreSQL Firewall Rule object"
  value       = azurerm_postgresql_firewall_rule.fw_rule
}
