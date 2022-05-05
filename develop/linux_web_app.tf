module "common_linux_web_app" {
  source = "../modules/linux_web_app"

  common_config = var.common_config
  common_linux_web_app_config = {
    name                = var.common_linux_web_app_config.name
    resource_group_name = module.common_resource_group.name
    service_plan_id     = module.common_app_service_plan.id
  }
}
