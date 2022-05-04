module "common_resource_group" {
  source = "../modules/resource_group"

  common_config         = var.common_config
  resource_group_config = var.common_resource_group_config
}
