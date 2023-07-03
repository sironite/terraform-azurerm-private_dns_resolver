# This resource creates a virtual network link for the private DNS resolver.
resource "azurerm_private_dns_resolver_virtual_network_link" "this" {
  name                      = var.dns_resolver_virtual_network_link_name
  dns_forwarding_ruleset_id = var.dns_forwarding_ruleset_id
  virtual_network_id        = var.virtual_network_id
}