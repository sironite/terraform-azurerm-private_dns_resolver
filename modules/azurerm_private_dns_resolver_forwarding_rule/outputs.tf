output "forwarding_rule_id" {
  value = azurerm_private_dns_resolver_forwarding_rule.this.id
}

output "forwarding_rule_name" {
  value = azurerm_private_dns_resolver_forwarding_rule.this.name
}
