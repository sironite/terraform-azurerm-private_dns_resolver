<!-- BEGIN_TF_DOCS -->
 # Private DNS Resolver
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-private_dns_resolver/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver_forwarding_rule)

# Usage - Module

## Private DNS Resolver Forwarding Rule
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
| [azurerm_private_dns_resolver_forwarding_rule.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_resolver_forwarding_rule) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| dns\_forwarding\_ruleset\_id | The ID of the DNS forwarding ruleset. | `string` | yes |
| dns\_resolver\_forwarding\_rule\_name | The name of the DNS forwarding rule. | `string` | yes |
| domain\_name | The domain name to forward. | `string` | yes |
| enabled | Whether the DNS forwarding rule is enabled. | `bool` | yes |
| ip\_address | The IP address of the DNS server to forward to. | `string` | yes |
| port | The port of the DNS server to forward to. | `number` | yes |

## Outputs

| Name | Description |
|------|-------------|
| forwarding\_rule\_id | n/a |
| forwarding\_rule\_name | n/a |

## Related documentation
<!-- END_TF_DOCS -->