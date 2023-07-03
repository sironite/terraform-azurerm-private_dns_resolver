variable "dns_resolver_outbound_endpoint_name" {
  type        = string
  description = "The name of the outbound endpoint for the private DNS resolver."
}

variable "location" {
  type        = string
  description = "The location of the inbound endpoint for the private DNS resolver."
}

variable "private_dns_resolver_id" {
  type        = string
  description = "The ID of the private DNS resolver to associate with the inbound endpoint."
}

variable "subnet_id_outbound_endpoint" {
  type        = string
  description = "The ID of the subnet in which to create the inbound endpoint."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the inbound endpoint."
  default     = {}
}