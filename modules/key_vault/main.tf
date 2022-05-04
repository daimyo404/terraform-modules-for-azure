data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "common_module_key_vault" {
  name                        = var.common_key_vault_config.name
  location                    = var.common_config.location
  resource_group_name         = var.common_key_vault_config.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = true

  sku_name = var.common_key_vault_config.sku_name

  ### FIXME: dynamicブロックでブロックは使えなかった
  # dynamic "access_policy" {
  #   for_each = var.common_key_vault_config.access_policy
  #   content {
  #     access_policy {
  #       tenant_id           = data.azurerm_client_config.current.tenant_id
  #       object_id           = access_policy.value["object_id"]
  #       key_permissions     = access_policy.value["key_permissions"]
  #       secret_permissions  = access_policy.value["secret_permissions"]
  #       storage_permissions = access_policy.value["storage_permissions"]
  #     }
  #   }
  # }
}
