variable "datasource_uid" {
  type = string
}

variable "contact_point" {
  type    = string
  default = null
}

variable "labels" {
  type    = map(string)
  default = {}
}

variable "annotations" {
  type    = map(string)
  default = {}
}

# -- efs
variable "enable_efs_alert" {
  type    = bool
  default = false
}

variable "efs_folder_name" {
  type    = string
  default = "efs"
}

variable "efs_rule_groups" {
  type    = any
  default = null
}
