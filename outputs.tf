output "private_dns_resolver_id" {
  description = "The ID of the private DNS resolver."
  value = azurerm_private_dns_resolver.this.id
}

output "private_dns_resolver_fqdn" {
  description = "The FQDN of the private DNS resolver."
  value = azurerm_private_dns_resolver.this.fqdn
}

output "private_dns_resolver_ip_addresses" {
  description = "The IP addresses of the private DNS resolver."
  value = azurerm_private_dns_resolver.this.ip_addresses
}

output "dns_resolver_inbound_endpoint_id" {
  description = "The ID of the private DNS resolver inbound endpoint."
  value       = module.private_dns_resolver_inbound_endpoint.id
}

output "dns_resolver_inbound_endpoint_name" {
  description = "The name of the private DNS resolver inbound endpoint."
  value       = module.private_dns_resolver_inbound_endpoint.name
}
