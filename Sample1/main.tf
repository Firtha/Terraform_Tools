# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rgSvensson0109" {
  name     = "rgSvensson0109"
  location = "West Europe"
}

resource "azurerm_storage_account" "sa1809esgi5ibc" {
  name                     = "sa1809esgi5ibc"
  resource_group_name      = azurerm_resource_group.rgSvensson0109.name
  location                 = azurerm_resource_group.rgSvensson0109.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
