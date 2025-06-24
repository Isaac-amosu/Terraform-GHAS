terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.4.0"
}

provider "azurerm" {
  features = {}
  subscription_id = "00000000-0000-0000-0000-000000000000"
  client_id       = "11111111-1111-1111-1111-111111111111"
  client_secret   = "fakeAzureClientSecretForGHAS1!"
  tenant_id       = "22222222-2222-2222-2222-222222222222"
}

module "resource_group" {
  source  = "Azure/resource-group/azurerm"
  version = "2.0.0"

  location = "East US"
  name     = "ghas-test-rg"
}
