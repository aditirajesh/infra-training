terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  # Remote state in Azure Storage (filled by backend-configs at init)
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}
