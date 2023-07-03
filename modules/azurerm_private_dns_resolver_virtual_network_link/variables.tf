variable "dns_resolver_virtual_network_link_name" {
  type        = string
  description = "The name of the private DNS resolver virtual network link."
}

variable "dns_forwarding_ruleset_id" {
  type        = string
  description = "The ID of the DNS forwarding ruleset to link to the private DNS resolver."
}

variable "virtual_network_id" {
  type        = string
  description = "The ID of the virtual network to link to the private DNS resolver."
}
