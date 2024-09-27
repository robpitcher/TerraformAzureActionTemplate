terraform {
  required_version = ">= 1.3.0, <2.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "<State Management Resource Group Name>"
    storage_account_name = "<State Management Storage Account Name>"
    container_name       = "<State Management Container Name>"
    key                  = "<State Management Key Name>"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
}
