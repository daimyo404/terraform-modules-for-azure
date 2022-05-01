variable "common_config" {
  description = "Common resource settings."
  default = {
    location = "Japan East"
  }
}

variable "resource_group_config" {
  description = "'Common resource group' settings."
  default = {
    name = "rg-common-dev-japaneast-001"
  }
}
