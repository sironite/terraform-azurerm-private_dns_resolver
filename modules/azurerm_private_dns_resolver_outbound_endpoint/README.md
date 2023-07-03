<!-- BEGIN_TF_DOCS -->
 # Private DNS Resolver
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-private_dns_resolver/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver_outbound_endpoint)

# Usage - Module

## Private DNS resolver outbound endpoint
```hcl
module "private_dns_resolver" {
  source  = "sironite/private_dns_resolver/azurerm"
  version = "X.X.X"

  dns_resolver_name   = "my-dns-resolver"
  resource_group_name = " my-resource-group"
  location            = "westeurope"
  virtual_network_id  = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.Network/virtualNetworks/my-vnet"

  enabled_outbound_endpoint          = true
  dns_resolver_outbound_endpoint_name = "my-dns-resolver-outbound-endpoint"
  subnet_id                          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet"
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
| [azurerm_private_dns_resolver_outbound_endpoint.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver_outbound_endpoint) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| dns\_resolver\_outbound\_endpoint\_name | The name of the outbound endpoint for the private DNS resolver. | `string` | yes |
| location | The location of the inbound endpoint for the private DNS resolver. | `string` | yes |
| private\_dns\_resolver\_id | The ID of the private DNS resolver to associate with the inbound endpoint. | `string` | yes |
| subnet\_id | The ID of the subnet in which to create the inbound endpoint. | `string` | yes |
| tags | A map of tags to apply to the inbound endpoint. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| outbound\_endpoint\_id | The ID of the outbound endpoint for the private DNS resolver. |
| outbound\_endpoint\_name | The name of the outbound endpoint for the private DNS resolver. |

## Related documentation
<!-- END_TF_DOCS -->