provider "azurerm" {
  features {}
  subscription_id = "d52a6d4f-8a6b-4e23-a011-dbb0c8d7eddc"
}

resource "azurerm_resource_group" "rg" {
name     = "bs-basic-pipeline"
location = "westus2"
}
