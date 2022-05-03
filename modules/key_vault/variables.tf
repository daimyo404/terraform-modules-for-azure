variable "common_config" {
  description = "Common resource settings."
  default = {
    location = "Japan East"
  }
}

variable "resource_group_name" {
  default = null
}

variable "key_vault_name" {
  description = "'Common key vault and access policy' settings."
  default     = "kv-common-dev-je-001"
}
