variable "common_config" {
  description = "Common resource settings."
  default = {
    location = "Japan East"
  }
}

variable "common_key_vault_config" {
  description = "'Common resource group' settings."
  default = {
    name                = "kv-common-dev-je-001"
    sku_name            = "standard"
    access_policy       = []
  }
}
