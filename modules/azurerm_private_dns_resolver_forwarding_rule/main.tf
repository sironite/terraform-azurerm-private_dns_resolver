# This resource creates a forwarding rule for the private DNS resolver.
resource "azurerm_private_dns_resolver_forwarding_rule" "this" {
  name                      = var.dns_resolver_forwarding_rule_name
  dns_forwarding_ruleset_id = var.dns_forwarding_ruleset_id
  domain_name               = var.domain_name
  enabled                   = var.enabled
  target_dns_servers {
    ip_address = var.ip_address
    port       = var.port
  }
}