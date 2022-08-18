provider "azurerm" {
  features { }
}

resource "azurerm_resource_group" "tf_rg1" {
  name = "terraform_rg1"
  location = "eastus"
}