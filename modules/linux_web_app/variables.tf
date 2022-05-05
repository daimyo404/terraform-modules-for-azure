variable "common_config" {
  description = "Common resource settings."
  default = {
    location = "Japan East"
  }
}

variable "common_linux_web_app_config" {
  description = "'Common linux web app' settings."
  default = {
    name = "app-common-dev-je-001"
  }
}
