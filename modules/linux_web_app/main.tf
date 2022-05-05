resource "azurerm_linux_web_app" "example" {
  name                = var.common_linux_web_app_config.name
  resource_group_name = var.common_linux_web_app_config.resource_group_name
  location            = var.common_config.location
  service_plan_id     = var.common_linux_web_app_config.service_plan_id

  site_config {}
}
