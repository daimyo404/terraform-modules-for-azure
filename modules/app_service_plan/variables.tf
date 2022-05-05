variable "common_config" {
  description = "Common resource settings."
  default = {
    location = "Japan East"
  }
}

variable "common_app_service_plan_config" {
  description = "'Common app service plan' settings."
  default = {
    name     = "plan-common-dev-je-001"
    os_type  = "Linux"
    sku_name = "B1"
  }
}
