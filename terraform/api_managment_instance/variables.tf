variable "resource_group_name" {
  description = "The resource group name."
  type        = string
}
variable "resource_group_location" {
  description = "The resource group location."
  type        = string
}
variable "azurerm_api_management_name" {
  description = "The api management instance name."
  type        = string
}
variable "api_management_instance_publisher_name" {
  description = "The api publisher name"
  type = string
}
variable "publisher_email" {
  description = "The api publisher email"
  type = string
}
