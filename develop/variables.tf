variable "common_config" {
  description = "Common resource settings."
  default = {
    location = "Japan East"
  }
}

##### Resource group #####
variable "common_resource_group_config" {
  description = "'Common resource group' settings."
  default = {
    name = "rg-common-dev-je-001"
  }
}

##### Key Vault #####
variable "common_key_vault_config" {
  description = "'Common key vault' settings."
  default = {
    name     = "kv-common-dev-je-001"
    sku_name = "standard"
    access_policy = [
      {
        object_id = "4171b2ba-d5c8-43ae-be10-4eb74afa226e"
        key_permissions = [
          "Get",
        ]
        secret_permissions = [
          "Get",
        ]
        storage_permissions = [
          "Get",
        ]
      }
    ]
  }
}
