<!-- BEGIN_TF_DOCS -->
 # Invullen
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](Invullen) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](Invullen)

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
| private\_dns\_resolver\_inbound\_endpoint | ./module/azurerm_private_dns_resolver_inbound_endpoint | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_resolver.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| dns\_resolver\_inbound\_endpoint\_name | The name of the private DNS resolver inbound endpoint. | `string` | yes |
| dns\_resolver\_name | The name of the private DNS resolver. | `string` | yes |
| location | The location of the private DNS resolver. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the private DNS resolver. | `string` | yes |
| subnet\_id | The ID of the subnet in which to create the private DNS resolver inbound endpoint. | `string` | yes |
| virtual\_network\_id | The ID of the virtual network in which to create the private DNS resolver. | `string` | yes |
| enabled\_inbound\_endpoint | deploy inbound endpoint | `bool` | no |

## Outputs

No outputs.

## Related documentation
<!-- END_TF_DOCS -->