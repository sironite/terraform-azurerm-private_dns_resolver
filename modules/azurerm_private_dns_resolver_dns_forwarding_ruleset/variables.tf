variable "dns_resolver_dns_forwarding_ruleset_name" {
  type        = string
  description = "The name of the DNS forwarding ruleset."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the DNS forwarding ruleset."
}

variable "dns_resolver_outbound_endpoint_id" {
  type        = list(string)
  description = "The IDs of the private DNS resolver outbound endpoints to use for forwarding."
}

variable "location" {
  type        = string
  description = "The location in which to create the DNS forwarding ruleset."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the DNS forwarding ruleset."
}