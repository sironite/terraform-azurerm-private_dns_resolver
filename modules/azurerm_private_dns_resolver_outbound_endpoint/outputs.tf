output "outbound_endpoint_id" {
  description = "The ID of the outbound endpoint for the private DNS resolver."
  value = azurerm_private_dns_resolver_outbound_endpoint.this.id
}

output "outbound_endpoint_name" {
  description = "The name of the outbound endpoint for the private DNS resolver."
  value = azurerm_private_dns_resolver_outbound_endpoint.this.name
}