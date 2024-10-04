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

variable "selectors" {
  type    = list(string)
  default = []
}

# etcd
variable "enable_etcd_alert" {
  type    = bool
  default = false
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

# ceph
variable "enable_ceph_alert" {
  type    = bool
  default = false
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

# node-exporter
variable "enable_node_alert" {
  type    = bool
  default = false
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

# matusnovak/prometheus-smartctl
variable "enable_smartprom_alert" {
  type    = bool
  default = false
}

variable "smartprom_folder_name" {
  type    = string
  default = "smartprom"
}

variable "smartprom_rule_groups" {
  type    = any
  default = null
}

variable "smartprom_selectors" {
  type    = list(string)
  default = []
}

# kubernetes
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
