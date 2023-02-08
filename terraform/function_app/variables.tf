variable "resource_group_name" {
  description = "The resource group name."
  type        = string
}

variable "resource_group_location" {
  description = "The resource group location."
  type        = string
}

variable "function_app_name" {
  description = "The function app name"
  type        = string
}

variable "service_plan_id" {
  description = "The app service plan id"
  type        = string
}

variable "storage_account_name" {
  description = "The storage account name"
  type        = string
}

variable "storage_account_access_key" {
  description = "The storage account access key"
  type        = string
}
