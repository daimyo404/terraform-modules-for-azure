module "common_key_vault" {
  source = "../modules/key_vault"

  common_config       = var.common_config
  resource_group_name = module.common_resource_group.name
  key_vault_name      = var.key_vault_name
}
