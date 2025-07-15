variable "resource_group_name" {
  description = "The name of the resource group to deploy resources into."
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources into."
  type        = string
}

variable "environment_id" {
  description = "The resource ID of the Azure Container App Environment."
  type        = string
}
