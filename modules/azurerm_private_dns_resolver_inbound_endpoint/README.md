<!-- BEGIN_TF_DOCS -->
 # Private DNS Resolver
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-private_dns_resolver/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver_inbound_endpoint)

# Usage - Module

## Private DNS resolver inbound endpoint
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
| [azurerm_private_dns_resolver_inbound_endpoint.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver_inbound_endpoint) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| dns\_resolver\_inbound\_endpoint\_name | The name of the inbound endpoint for the private DNS resolver. | `string` | yes |
| location | The location of the inbound endpoint for the private DNS resolver. | `string` | yes |
| private\_dns\_resolver\_id | The ID of the private DNS resolver to associate with the inbound endpoint. | `string` | yes |
| subnet\_id\_inbound\_endpoint | The ID of the subnet in which to create the inbound endpoint. | `string` | yes |
| private\_ip\_allocation\_method | The allocation method for the private IP address of the inbound endpoint. | `string` | no |
| tags | A map of tags to apply to the inbound endpoint. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| dns\_resolver\_inbound\_endpoint\_id | The ID of the private DNS resolver inbound endpoint. |
| dns\_resolver\_inbound\_endpoint\_name | The name of the private DNS resolver inbound endpoint. |

## Related documentation
<!-- END_TF_DOCS -->