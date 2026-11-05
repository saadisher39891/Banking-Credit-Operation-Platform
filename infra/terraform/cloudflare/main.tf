terraform {
  required_providers {
    cloudflare = { source = "cloudflare/cloudflare", version = "~> 4.0" }
  }
}
provider "cloudflare" { api_token = var.cloudflare_api_token }

resource "cloudflare_record" "application" {
  zone_id = var.zone_id
  name    = var.hostname
  type    = "CNAME"
  value   = var.edge_target
  proxied = true
}
