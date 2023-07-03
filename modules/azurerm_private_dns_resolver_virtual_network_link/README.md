<!-- BEGIN_TF_DOCS -->
 # Private DNS Resolver
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-private_dns_resolver/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver_virtual_network_link)

# Usage - Module

## Private DNS Resolver Virtual Network Link
```hcl
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


```
## Providers

| Name | Version |
|------|---------|
| azurerm | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_resolver_virtual_network_link.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver_virtual_network_link) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| dns\_forwarding\_ruleset\_id | The ID of the DNS forwarding ruleset to link to the private DNS resolver. | `string` | yes |
| dns\_resolver\_virtual\_network\_link\_name | The name of the private DNS resolver virtual network link. | `string` | yes |
| virtual\_network\_id | The ID of the virtual network to link to the private DNS resolver. | `string` | yes |

## Outputs

| Name | Description |
|------|-------------|
| virtual\_network\_link\_id | n/a |

## Related documentation
<!-- END_TF_DOCS -->