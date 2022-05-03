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
# variable "common_key_vault_config" {
#   description = "'Common resource group' settings."
#   default = {
#     name                = "kv-common-dev-je-001"
#     resource_group_name = null
#   }
# }

variable "key_vault_name" {
  description = "'Common key vault and access policy' settings."
  default     = "kv-common-dev-je-001"
}