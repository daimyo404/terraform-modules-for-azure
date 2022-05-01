resource "azurerm_resource_group" "common_module_resource_group" {
  name     = var.resource_group_config.name
  location = var.common_config.location
}
