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


module "private_dns_resolver_dns_forwarding_ruleset" {
  source = "./modules/azurerm_private_dns_resolver_dns_forwarding_ruleset"

  count = var.enabled_dns_forwarding_ruleset ? 1 : 0

  dns_resolver_dns_forwarding_ruleset_name = var.dns_resolver_dns_forwarding_ruleset_name
  dns_resolver_outbound_endpoint_id        = [module.private_dns_resolver_outbound_endpoint.0.outbound_endpoint_id]
  location                                 = var.location
  resource_group_name = var.resource_group_name
  tags = var.tags
}

module "private_dns_resolver_forwarding_rule" {
  source = "./modules/azurerm_private_dns_resolver_forwarding_rule"

  for_each = { for k, v in var.forwarding_rule : k => v if v.enabled && length(keys(module.private_dns_resolver_outbound_endpoint.0)) > 0 }

  dns_resolver_forwarding_rule_name = each.value.dns_resolver_forwarding_rule_name
  dns_forwarding_ruleset_id         = module.private_dns_resolver_dns_forwarding_ruleset.0.dns_forwarding_ruleset_id
  domain_name                       = each.value.domain_name
  enabled                           = each.value.enabled
  ip_address                        = each.value.ip_address
  port                              = each.value.port
  
}

module "private_dns_resolver_virtual_network_link" {
  source = "./modules/azurerm_private_dns_resolver_virtual_network_link"

  count = var.enabled_dns_forwarding_ruleset ? 1 : 0

  dns_resolver_virtual_network_link_name = var.dns_resolver_virtual_network_link_name
  dns_forwarding_ruleset_id              = module.private_dns_resolver_dns_forwarding_ruleset.0.dns_forwarding_ruleset_id
  virtual_network_id                     = var.virtual_network_id
}

