# az login
# az account set --subscription ""

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "this" {
  name     = "AKSEASTUSD01"
  location = var.region
}