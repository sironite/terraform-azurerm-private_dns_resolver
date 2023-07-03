<!-- BEGIN_TF_DOCS -->
 # Private DNS Resolver
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-private_dns_resolver/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver)

# Usage - Module

##Private DNS Resolver
```hcl
module "private_dns_resolver" {
  source  = "sironite/private_dns_resolver/azurerm"
  version = "X.X.X"

  dns_resolver_name   = "my-dns-resolver"
  resource_group_name = " my-resource-group"
  location            = "westeurope"
  virtual_network_id  = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.Network/virtualNetworks/my-vnet"
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 3.0.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| private\_dns\_resolver\_dns\_forwarding\_ruleset | ./modules/azurerm_private_dns_resolver_dns_forwarding_ruleset | n/a |
| private\_dns\_resolver\_forwarding\_rule | ./modules/azurerm_private_dns_resolver_forwarding_rule | n/a |
| private\_dns\_resolver\_inbound\_endpoint | ./modules/azurerm_private_dns_resolver_inbound_endpoint | n/a |
| private\_dns\_resolver\_outbound\_endpoint | ./modules/azurerm_private_dns_resolver_outbound_endpoint | n/a |
| private\_dns\_resolver\_virtual\_network\_link | ./modules/azurerm_private_dns_resolver_virtual_network_link | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_resolver.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| dns\_resolver\_name | The name of the private DNS resolver. | `string` | yes |
| location | The location of the private DNS resolver. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the private DNS resolver. | `string` | yes |
| virtual\_network\_id | The ID of the virtual network in which to create the private DNS resolver. | `string` | yes |
| dns\_resolver\_dns\_forwarding\_ruleset\_name | The name of the private DNS resolver DNS forwarding ruleset. | `string` | no |
| dns\_resolver\_inbound\_endpoint\_name | The name of the private DNS resolver inbound endpoint. | `string` | no |
| dns\_resolver\_outbound\_endpoint\_name | The name of the private DNS resolver outbound endpoint. | `string` | no |
| dns\_resolver\_virtual\_network\_link\_name | The name of the private DNS resolver virtual network link. | `string` | no |
| enabled\_dns\_forwarding\_ruleset | deploy dns forwarding ruleset | `bool` | no |
| enabled\_inbound\_endpoint | deploy inbound endpoint | `bool` | no |
| enabled\_outbound\_endpoint | deploy outbound endpoint | `bool` | no |
| forwarding\_rule | n/a | <pre>map(object({<br>    enabled = bool<br>    dns_resolver_forwarding_rule_name = string<br>    domain_name = string<br>    ip_address = string<br>    port = number<br>  }))</pre> | no |
| subnet\_id\_inbound\_endpoint | The ID of the subnet in which to create the private DNS resolver inbound endpoint. | `string` | no |
| subnet\_id\_outbound\_endpoint | The ID of the subnet in which to create the private DNS resolver outbound endpoint. | `string` | no |
| tags | A mapping of tags to assign to the resource. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| private\_dns\_resolver\_id | The ID of the private DNS resolver. |

## Related documentation
<!-- END_TF_DOCS -->