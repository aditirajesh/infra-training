variable "resource_group_name" {
  type = string
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "storage_account_name" {
  type        = string
  description = "3–24 chars, lowercase letters & digits, globally unique"
}
