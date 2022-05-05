resource "azurerm_service_plan" "common_module_app_service_plan" {
  name                = var.common_app_service_plan_config.name
  resource_group_name = var.common_app_service_plan_config.resource_group_name
  location            = var.common_config.location
  os_type             = var.common_app_service_plan_config.os_type
  sku_name            = var.common_app_service_plan_config.sku_name
}
