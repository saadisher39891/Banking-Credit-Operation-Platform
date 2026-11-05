terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = { source = "hashicorp/azurerm", version = "~> 3.110" }
  }
}
provider "azurerm" { features {} }

module "platform" {
  source              = "../modules/azure-platform"
  resource_group_name = var.resource_group_name
  location            = var.location
  aks_name            = var.aks_name
  acr_name            = var.acr_name
}
