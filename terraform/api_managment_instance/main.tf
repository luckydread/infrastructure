resource "azurerm_api_management" "issuereporting" {
  name                = var.azurerm_api_management_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  publisher_name      = var.api_management_instance_publisher_name
  publisher_email     = var.publisher_email
  sku_name            = "Developer_1"
}
