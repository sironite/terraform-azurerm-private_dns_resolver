output "private_dns_resolver_id" {
  description = "The ID of the private DNS resolver."
  value = azurerm_private_dns_resolver.this.id
}
