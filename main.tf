# This resource creates a private DNS resolver in Azure.
resource "azurerm_private_dns_resolver" "this" {
  name                = var.dns_resolver_name
  resource_group_name = var.resource_group_name
  location            = var.location
  virtual_network_id  = var.virtual_network_id

  tags = var.tags
}


# This resource creates an inbound endpoint for the private DNS resolver.
module "private_dns_resolver_inbound_endpoint" {
  source = "./module/azurerm_private_dns_resolver_inbound_endpoint"

  count = var.enabled_inbound_endpoint ? 1 : 0

  dns_resolver_inbound_endpoint_name = var.dns_resolver_inbound_endpoint_name
  resource_group_name                = var.resource_group_name
  private_dns_resolver_id            = azurerm_private_dns_resolver.this.id
  subnet_id                          = var.subnet_id

  tags = var.tags

}
