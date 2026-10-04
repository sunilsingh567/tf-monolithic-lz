terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "rg-sun"
    storage_account_name = "stguniverse"
    container_name = "sptfstate"
    key = "sg.tfstate"
  }
}

provider "azurerm" {
  features {}
}