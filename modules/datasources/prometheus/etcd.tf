module "etcd" {
  count          = var.config.enable_etcd_alert ? 1 : 0
  source         = "../../rule-groups"
  folder_name    = var.config.etcd_folder_name
  datasource_uid = var.config.datasource_uid
  annotations    = var.config.annotations
  labels         = var.config.labels
  static_rule_groups = yamldecode(
    templatefile("${path.module}/etcd-rules.yaml",
      { etcd_selectors = join(",", compact(concat(var.config.selectors, var.config.etcd_selectors))) }
    )
  )
  rule_groups = var.config.etcd_rule_groups
}
