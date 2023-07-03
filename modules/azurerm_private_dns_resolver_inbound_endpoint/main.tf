# This resource creates an inbound endpoint for the private DNS resolver.
resource "azurerm_private_dns_resolver_inbound_endpoint" "this" {
  name                    = var.dns_resolver_inbound_endpoint_name
  resource_group_name     = var.resource_group_name
  private_dns_resolver_id = var.private_dns_resolver_id

  ip_configurations {
    private_ip_allocation_method = var.private_ip_allocation_method
    subnet_id                    = var.subnet_id
  }

  tags = var.tags
}