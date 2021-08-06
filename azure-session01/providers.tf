terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "5ada1a5c-833e-483f-8681-371dd18e38dd"
  client_id     = "819e5436-04ea-427b-8c0e-8a5aab8c6e7d"
  client_secret = var.client_secret
  tenant_id     = "76a2ae5a-9f00-4f6b-95ed-5d33d77c4d61"
}
