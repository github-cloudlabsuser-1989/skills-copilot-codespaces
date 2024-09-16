provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}