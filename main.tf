module "prometheus" {
  count  = local.enable_prometheus_module ? 1 : 0
  source = "./modules/prometheus"

  datasource_uid = var.prom_datasource_uid
  contact_point  = var.prom_contact_point
  labels         = var.prom_labels

  enable_ceph_alert = var.enable_ceph_alert
  ceph_folder_name  = "${var.folder_prefix}${var.ceph_folder_name}"
  ceph_rule_groups  = var.ceph_rule_groups
  ceph_selectors    = var.ceph_selectors

  enable_etcd_alert = var.enable_etcd_alert
  etcd_folder_name  = "${var.folder_prefix}${var.etcd_folder_name}"
  etcd_rule_groups  = var.etcd_rule_groups
  etcd_selectors    = var.etcd_selectors

  enable_kubernetes_alert = var.enable_kubernetes_alert
  kubernetes_folder_name  = "${var.folder_prefix}${var.kubernetes_folder_name}"
  kubernetes_rule_groups  = var.kubernetes_rule_groups
  kubernetes_selectors    = var.kubernetes_selectors

  enable_node_alert = var.enable_node_alert
  node_folder_name  = "${var.folder_prefix}${var.node_folder_name}"
  node_rule_groups  = var.node_rule_groups
  node_selectors    = var.node_selectors

  enable_smartprom_alert = var.enable_smartprom_alert
  smartprom_folder_name  = "${var.folder_prefix}${var.smartprom_folder_name}"
  smartprom_rule_groups  = var.smartprom_rule_groups
  smartprom_selectors    = var.smartprom_selectors
}

module "aws" {
  count  = local.enable_aws_module ? 1 : 0
  source = "./modules/aws"

  datasource_uid   = var.aws_datasource_uid
  contact_point    = var.aws_contact_point
  labels           = var.aws_labels
  enable_efs_alert = var.enable_efs_alert
  efs_folder_name  = "${var.folder_prefix}${var.efs_folder_name}"
  efs_rule_groups  = var.efs_rule_groups
}

locals {
  enable_prometheus_module = (
    var.enable_ceph_alert ||
    var.enable_etcd_alert ||
    var.enable_kubernetes_alert ||
    var.enable_node_alert ||
    var.enable_smartprom_alert
  )
  enable_aws_module = (
    var.enable_efs_alert
  )
}
