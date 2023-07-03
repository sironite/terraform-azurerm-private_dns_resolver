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