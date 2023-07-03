variable "dns_resolver_inbound_endpoint_name" {
  type        = string
  description = "The name of the inbound endpoint for the private DNS resolver."
}

variable "location" {
  type        = string
  description = "The location of the inbound endpoint for the private DNS resolver."  
}

variable "private_dns_resolver_id" {
  type        = string
  description = "The ID of the private DNS resolver to associate with the inbound endpoint."
}

variable "private_ip_allocation_method" {
  type        = string
  description = "The allocation method for the private IP address of the inbound endpoint."
  default     = "Dynamic"
}

variable "subnet_id_inbound_endpoints" {
  type        = string
  description = "The ID of the subnet in which to create the inbound endpoint."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the inbound endpoint."
  default     = {}
}