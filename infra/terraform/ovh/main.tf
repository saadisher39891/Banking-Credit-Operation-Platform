terraform {
  required_version = ">= 1.6.0"
  required_providers {
    ovh = { source = "ovh/ovh", version = "~> 0.37" }
  }
}
provider "ovh" { endpoint = var.ovh_endpoint }

module "recovery" {
  source       = "../modules/ovh-recovery"
  service_name = var.service_name
  region       = var.region
  instance_ids = var.instance_ids
}
