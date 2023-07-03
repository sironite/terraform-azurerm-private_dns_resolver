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
  source = "./modules/azurerm_private_dns_resolver_inbound_endpoint"

  count = var.enabled_inbound_endpoint ? 1 : 0

  dns_resolver_inbound_endpoint_name = var.dns_resolver_inbound_endpoint_name
  location                           = var.location
  private_dns_resolver_id            = azurerm_private_dns_resolver.this.id
  subnet_id_inbound_endpoint         = var.subnet_id_inbound_endpoint

  tags = var.tags

}

module "private_dns_resolver_outbound_endpoint" {
  source = "./modules/azurerm_private_dns_resolver_outbound_endpoint"

  count = var.enabled_outbound_endpoint ? 1 : 0

  dns_resolver_outbound_endpoint_name = var.dns_resolver_outbound_endpoint_name
  private_dns_resolver_id             = azurerm_private_dns_resolver.this.id
  location                            = var.location
  subnet_id_outbound_endpoint         = var.subnet_id_outbound_endpoint

  tags = var.tags
}

