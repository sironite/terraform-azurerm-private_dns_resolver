output "dns_forwarding_ruleset_id" {
  description = "The ID of the DNS forwarding ruleset."
  value = azurerm_private_dns_resolver_dns_forwarding_ruleset.this.id
}

output "dns_forwarding_ruleset_name" {
  description = "The name of the DNS forwarding ruleset."
  value = azurerm_private_dns_resolver_dns_forwarding_ruleset.this.name
}