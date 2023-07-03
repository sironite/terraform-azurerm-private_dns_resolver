<!-- BEGIN_TF_DOCS -->
 # Private DNS Resolver
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-private_dns_resolver/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver_dns_forwarding_ruleset)

# Usage - Module

## Private DNS Resolver Dns Forwarding Ruleset
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
| [azurerm_private_dns_resolver_dns_forwarding_ruleset.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver_dns_forwarding_ruleset) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| dns\_resolver\_dns\_forwarding\_ruleset\_name | The name of the DNS forwarding ruleset. | `string` | yes |
| dns\_resolver\_outbound\_endpoint\_id | The IDs of the private DNS resolver outbound endpoints to use for forwarding. | `list(string)` | yes |
| location | The location in which to create the DNS forwarding ruleset. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the DNS forwarding ruleset. | `string` | yes |
| tags | A map of tags to apply to the DNS forwarding ruleset. | `map(string)` | yes |

## Outputs

| Name | Description |
|------|-------------|
| dns\_forwarding\_ruleset\_id | The ID of the DNS forwarding ruleset. |
| dns\_forwarding\_ruleset\_name | The name of the DNS forwarding ruleset. |

## Related documentation
<!-- END_TF_DOCS -->