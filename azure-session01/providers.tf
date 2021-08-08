terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.70.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.secrets.subscription_id
  client_id     = var.secrets.client_id
  client_secret = var.secrets.client_secret
  tenant_id     = var.secrets.tenant_id
}
