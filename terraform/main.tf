terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.42.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "chimbani-state"
    storage_account_name = "chimbani"
    container_name       = "state"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}


module "app_service_plan" {
  source                        = "./app_service_plan"
  resource_group_location       = var.resource_group_location
  resource_group_name           = var.resource_group_name
  azurerm_service_plan_name     = var.azurerm_service_plan_name
  azurerm_service_plan_os_type  = var.azurerm_service_plan_os_type
  azurerm_service_plan_sku_name = var.azurerm_service_plan_sku_name
}

module "application_insights" {
  source                            = "./application_insights"
  resource_group_location           = var.resource_group_location
  resource_group_name               = var.resource_group_name
  azurerm_application_insights_type = var.azurerm_application_insights_type
  azurerm_application_insights_name = var.azurerm_application_insights_name
}



module "function_app" {
  source                     = "./function_app"
  function_app_name          = var.function_app_name
  resource_group_location    = var.resource_group_location
  resource_group_name        = var.resource_group_name
  storage_account_name       = var.azurerm_storage_account_name
  service_plan_id            = module.app_service_plan.azurerm_service_plan_id
  storage_account_access_key = "$ACCOUNT_KEY"
  depends_on                 = [module.app_service_plan]
}



module "api_management_instance" {
  source                                 = "./api_managment_instance"
  azurerm_api_management_name            = var.azurerm_api_management_name
  resource_group_location                = var.resource_group_location
  resource_group_name                    = var.resource_group_name
  publisher_email                        = var.publisher_email
  api_management_instance_publisher_name = var.api_management_instance_publisher_name
}
