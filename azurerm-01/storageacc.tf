resource "azurerm_storage_account" "azurerm_sitp" {
  name                     = var.storageaccount_name
  resource_group_name      = var.resourcegroup_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = var.environment
  }
}