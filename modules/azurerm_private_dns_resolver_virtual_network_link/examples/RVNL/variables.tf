variable "dns_resolver_name" {
  description = "The name of the private DNS resolver."
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the private DNS resolver."
  type        = string
}

variable "location" {
  description = "The location of the private DNS resolver."
  type        = string
}

variable "virtual_network_id" {
  description = "The ID of the virtual network in which to create the private DNS resolver."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "enabled_outbound_endpoint" {
  description = "deploy outbound endpoint"
  type        = bool
  default     = false
}

variable "dns_resolver_outbound_endpoint_name" {
  description = "The name of the private DNS resolver outbound endpoint."
  type        = string
  default     = ""
}

variable "subnet_id_outbound_endpoint" {
  description = "The ID of the subnet in which to create the private DNS resolver outbound endpoint."
  type        = string
  default     = ""
}

variable "enabled_dns_forwarding_ruleset" {
  description = "deploy dns forwarding ruleset"
  type        = bool
  default     = false
}

variable "dns_resolver_dns_forwarding_ruleset_name" {
  description = "The name of the private DNS resolver DNS forwarding ruleset."
  type        = string
  default     = ""
}

variable "forwarding_rule" {
  type = map(object({
    enabled                           = bool
    dns_resolver_forwarding_rule_name = string
    domain_name                       = string
    ip_address                        = string
    port                              = number
  }))
  default = {}
}

variable "dns_resolver_virtual_network_link_name" {
  type        = string
  description = "The name of the private DNS resolver virtual network link."
}