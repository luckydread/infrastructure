variable "resource_group_name" {
  description = "The resource group name."
  type        = string
  default     = "chimbani-state"
}

variable "resource_group_location" {
  description = "The resource group location."
  type        = string
  default     = "northeurope"
}

variable "azurerm_service_plan_name" {
  description = "The app service plan name."
  type        = string
  default     = "issuerporting-appserviceplan"
}

variable "azurerm_service_plan_os_type" {
  description = "The app service plan OS type"
  type        = string
  default     = "Windows"
}

variable "azurerm_service_plan_sku_name" {
  description = "The app service plan sku name"
  type        = string
  default     = "P1v2"
}


variable "azurerm_application_insights_type" {
  description = "The application insights type."
  type        = string
  default     = "web"
}

variable "azurerm_application_insights_name" {
  description = "The application insights name."
  type        = string
  default     = "issuereporting-application-insights"

}

variable "azurerm_key_vault_name" {

  description = "The key vault name"
  type        = string
  default     = "issuereporting-vaultz"
}

variable "azurerm_storage_account_name" {
  description = "The storage account name"
  type        = string
  default     = "issuereportingstorage"
}

variable "azurerm_storage_account_tier" {
  description = "The storage account tier"
  type        = string
  default     = "Standard"
}

variable "azurerm_storage_account_replication_type" {
  description = "The storage account replication type"
  type        = string
  default     = "LRS"
}

variable "function_app_name" {
  description = "The function app name"
  type        = string
  default     = "issuerreportingfp"
}

variable "service_plan_id" {
  description = "The app service plan id"
  type        = string
  default     = ""
}

variable "storage_account_access_key" {
  description = "The storage account access key"
  default     =  ""
  type        = string
}

variable "azurerm_api_management_name" {
  description = "The api management instance name."
  type        = string
  default = "issuereportingapimanagmentz"
}
variable "api_management_instance_publisher_name" {
  description = "The api publisher name"
  type = string
  default = "issuepublishername"
}
variable "publisher_email" {
  description = "The api publisher email"
  type = string
  default = "ibinder@infi.com"
}

variable "azurerm_storage_container_name" {
  description = "The storage container name"
  type        = string
  default = "ibinderstoragecontainer"
}


variable "azurerm_storage_container_access_type" {
  description = "The storage container access type"
  type        = string
  default = ""
}
