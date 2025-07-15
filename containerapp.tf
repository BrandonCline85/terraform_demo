# Azure Container Apps Module
# This configuration uses the official AVM module for Azure Container Apps.
# For full documentation and required/optional inputs, see:
# https://github.com/Azure/terraform-azurerm-avm-res-app-containerapp

module "containerapp" {
  source  = "Azure/terraform-azurerm-avm-res-app-containerapp"
  # Specify the version according to the module README
  version = "x.y.z"

  resource_group_name = var.resource_group_name
  location            = var.location

  # Required: The name of the Container App
  name = "my-container-app"

  # Required: The environment resource ID for the Container App
  # You must create an Azure Container App Environment and reference its ID here
  environment_id = var.environment_id

  # Add other required and optional module inputs as described in the module README
}
