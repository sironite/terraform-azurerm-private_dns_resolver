variable "dns_resolver_forwarding_rule_name" {
  description = "The name of the DNS forwarding rule."
  type        = string
}

variable "dns_forwarding_ruleset_id" {
  description = "The ID of the DNS forwarding ruleset."
  type        = string
}

variable "domain_name" {
  description = "The domain name to forward."
  type        = string
}

variable "enabled" {
  description = "Whether the DNS forwarding rule is enabled."
  type        = bool
}

variable "ip_address" {
  description = "The IP address of the DNS server to forward to."
  type        = string
}

variable "port" {
  description = "The port of the DNS server to forward to."
  type        = number
}