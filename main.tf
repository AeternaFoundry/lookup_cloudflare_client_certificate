data "cloudflare_client_certificate" "client_certificate_lookup" {
  for_each = var.client_certificate_lookup

  client_certificate_id = each.value.client_certificate_id
  filter                = each.value.filter
  zone_id               = each.value.zone_id
}

