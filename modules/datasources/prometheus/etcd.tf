module "etcd" {
  count       = var.enable_etcd_alert ? 1 : 0
  source      = "../../rule-groups"
  folder_name = var.etcd_folder_name
  annotations = var.annotations
  labels      = var.labels
  rule_groups = var.etcd_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/etcd-rules.yaml",
      {
        datasource_uid = var.datasource_uid
        etcd_selectors = join(",", compact(concat(var.selectors, var.etcd_selectors)))
      }
    )
  )
}
