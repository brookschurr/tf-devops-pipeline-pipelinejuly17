provider "azurerm" {
  features {}
  subscription_id = "d52a6d4f-8a6b-4e23-a011-dbb0c8d7eddc"
}

resource "azurerm_resource_group" "rg1" {
name     = "bs-basic-pipeline1"
location = "westus2"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "bs-state-rg-pipeline"
    storage_account_name = "bsstatesapipline"
    container_name       = "bs-tfstate"
    key                  = "terraform.tfstate"
  }
}
