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
    ### NOTE: object_idベタ書きをやめたい
    access_policy = [
      {
        object_id = ""
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

##### App Service Plan #####
variable "common_app_service_plan_config" {
  description = "'Common app service plan' settings."
  default = {
    name     = "plan-common-dev-je-001"
    os_type  = "Linux"
    sku_name = "B1"
  }
}

##### Linux Web App #####
variable "common_linux_web_app_config" {
  description = "'Common linux web app' settings."
  default = {
    name = "app-common-dev-je-001"
  }
}
