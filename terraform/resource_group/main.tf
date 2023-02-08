resource "azurerm_resource_group" "issuereporting" {
  name     = var.resource_group_name
  location = var.resource_group_location
}