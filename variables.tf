variable "client_certificate_lookup" {
  description = <<EOT
Map of client_certificate_lookup, attributes below
Optional:
    - client_certificate_id
    - filter
    - zone_id
EOT

  type = map(object({
    client_certificate_id = optional(string)
    filter = optional(object({
      limit  = optional(number)
      offset = optional(number)
      status = optional(string)
    }))
    zone_id = optional(string)
  }))
}

