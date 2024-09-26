# global variable
# TODO: consider change name; maybe project or name or ...?
variable "folder_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "contact_point" {
  description = ""
  type        = string
  default     = ""
}

variable "labels" {
  description = ""
  type        = map(string)
  default     = {}
}

variable "annotations" {
  description = ""
  type        = map(string)
  default     = {}
}

## prometheus module variables
variable "prom_datasource_uid" {
  description = ""
  type        = string
  default     = ""
}

variable "prom_contact_point" {
  description = ""
  type        = string
  default     = ""
}

variable "prom_labels" {
  description = ""
  type        = map(string)
  default     = {}
}

variable "enable_etcd_alert" {
  description = ""
  type        = bool
  default     = false
}

variable "etcd_folder_name" {
  type    = string
  default = "etcd"
}

variable "etcd_rule_groups" {
  type    = any
  default = null
}

variable "etcd_selectors" {
  type    = list(string)
  default = []
}

variable "enable_ceph_alert" {
  description = ""
  type        = bool
  default     = false
}

variable "ceph_folder_name" {
  type    = string
  default = "ceph"
}

variable "ceph_rule_groups" {
  type    = any
  default = null
}

variable "ceph_selectors" {
  type    = list(string)
  default = []
}

variable "enable_node_alert" {
  description = ""
  type        = bool
  default     = false
}

variable "node_folder_name" {
  type    = string
  default = "node-exporter"
}

variable "node_rule_groups" {
  type    = any
  default = null
}

variable "node_selectors" {
  type    = list(string)
  default = []
}

variable "enable_kubernetes_alert" {
  type    = bool
  default = false
}

variable "kubernetes_folder_name" {
  type    = string
  default = "kubernetes"
}

variable "kubernetes_rule_groups" {
  type    = any
  default = null
}

variable "kubernetes_selectors" {
  type    = list(string)
  default = []
}

variable "enable_smartctl_alert" {
  type    = bool
  default = false
}

variable "smartctl_folder_name" {
  type    = string
  default = "prometheus-smartctl"
}

variable "smartctl_rule_groups" {
  type    = any
  default = null
}

variable "smartctl_selectors" {
  type    = list(string)
  default = []
}

## aws module variables
variable "aws_datasource_uid" {
  type    = string
  default = ""
}

variable "aws_contact_point" {
  type    = string
  default = null
}

variable "aws_labels" {
  type    = map(string)
  default = {}
}

variable "aws_annotations" {
  type    = map(string)
  default = {}
}

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
