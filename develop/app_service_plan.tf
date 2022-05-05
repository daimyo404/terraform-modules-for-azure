module "common_app_service_plan" {
  source = "../modules/app_service_plan"

  common_config = var.common_config
  common_app_service_plan_config = {
    name                = var.common_app_service_plan_config.name
    resource_group_name = module.common_resource_group.name
    os_type             = var.common_app_service_plan_config.os_type
    sku_name            = var.common_app_service_plan_config.sku_name
  }
}
