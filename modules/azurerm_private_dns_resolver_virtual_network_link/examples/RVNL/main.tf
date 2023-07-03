module "private_dns_resolver" {
  source  = "sironite/private_dns_resolver/azurerm"
  version = "X.X.X"

  dns_resolver_name   = "my-dns-resolver"
  resource_group_name = " my-resource-group"
  location            = "westeurope"
  virtual_network_id  = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.Network/virtualNetworks/my-vnet"

  enabled_inbound_endpoint           = true
  dns_resolver_inbound_endpoint_name = "my-dns-resolver-inbound-endpoint"
  subnet_id_inbound_endpoint         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet"

  dns_resolver_dns_forwarding_ruleset_name = "my-dns-resolver-dns-forwarding-ruleset"
  enabled_dns_forwarding_ruleset           = true

  forwarding_rule = {
    "my-forwarding-rule" = {
      domain_name = "my-domain.com"
      enabled     = true
      ip_address  = "xxx.xxx.xxx.xxx"
    }
  }

  dns_resolver_virtual_network_link_name = "my-dns-resolver-virtual-network-link"
}


