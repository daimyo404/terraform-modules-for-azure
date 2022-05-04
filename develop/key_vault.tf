module "common_key_vault" {
  source = "../modules/key_vault"

  common_config = var.common_config
  common_key_vault_config = {
    name                = var.common_key_vault_config.name
    resource_group_name = module.common_resource_group.name
    sku_name            = var.common_key_vault_config.sku_name
    access_policy       = var.common_key_vault_config.access_policy
  }
}
