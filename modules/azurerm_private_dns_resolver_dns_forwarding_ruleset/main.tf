# This resource creates a DNS forwarding ruleset for the private DNS resolver.
resource "azurerm_private_dns_resolver_dns_forwarding_ruleset" "this" {
  name                                       = var.dns_resolver_dns_forwarding_ruleset_name
  resource_group_name                        = var.resource_group_name
  private_dns_resolver_outbound_endpoint_ids = var.dns_resolver_outbound_endpoint_id
  location                                   = var.location

  tags = var.tags
}