
# This resource creates an outbound endpoint for the private DNS resolver.
resource "azurerm_private_dns_resolver_outbound_endpoint" "this" {
  name                    = var.dns_resolver_outbound_endpoint_name
  private_dns_resolver_id = azurerm_private_dns_resolver.this.id
  location                = var.location
  subnet_id               = var.subnet_id

  tags = var.tags
}