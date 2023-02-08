resource "azurerm_storage_account" "issuereporting" {
  name                     = var.azurerm_storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = var.azurerm_storage_account_tier
  account_replication_type = var.azurerm_storage_account_replication_type

  tags = {
    environment = "staging"
  }
}