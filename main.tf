terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "app_rg" {
  name     = "tf-demo-app-rg"
  location = "East US"
}

resource "azurerm_app_service_plan" "app_service_plan" {
  name                = "tf-demo-app-service-plan"
  location            = azurerm_resource_group.app_rg.location
  resource_group_name = azurerm_resource_group.app_rg.name
  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "app_service" {
  name                = "tf-demo-app-service"
  location            = azurerm_resource_group.app_rg.location
  resource_group_name = azurerm_resource_group.app_rg.name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id
  site_config {
    dotnet_framework_version = "v6.0"
  }
}
