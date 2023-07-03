output "dns_resolver_inbound_endpoint_id" {
  description = "The ID of the private DNS resolver inbound endpoint."
  value       = azurerm_private_dns_resolver_inbound_endpoint.this.id
}

output "dns_resolver_inbound_endpoint_name" {
  description = "The name of the private DNS resolver inbound endpoint."
  value       = azurerm_private_dns_resolver_inbound_endpoint.this.name
}

output "dns_resolver_inbound_endpoint_ip_configuration_ids" {
  description = "The IDs of the IP configurations associated with the private DNS resolver inbound endpoint."
  value       = azurerm_private_dns_resolver_inbound_endpoint.this.ip_configuration_ids
}