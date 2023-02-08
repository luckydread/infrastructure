variable "resource_group_name" {
  description = "The resource group name."
  type        = string
}

variable "resource_group_location" {
  description = "The resource group location."
  type        = string
}

variable "azurerm_service_plan_name" {
  description = "The app service plan name."
  type        = string
}

variable "azurerm_service_plan_os_type" {
  description = "The app service plan OS type"
  type        = string
}

variable "azurerm_service_plan_sku_name" {
  description = "The app service plan sku name"
  type        = string
}

variable "azurerm_storage_account_name" {
  description = "The storage account name"
  type        = string
}

variable "azurerm_storage_account_tier" {
  description = "The storage account tier"
  type        = string
}

variable "azurerm_storage_account_replication_type" {
  description = "The storage account replication type"
  type        = string
}