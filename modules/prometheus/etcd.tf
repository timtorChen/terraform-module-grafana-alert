module "etcd" {
  count   = var.enable_etcd_alert ? 1 : 0
  source  = "timtorChen/grafana-rule-groups/module"
  version = "0.0.1"

  folder_name    = var.etcd_folder_name
  annotations    = var.annotations
  labels         = var.labels
  datasource_uid = var.datasource_uid
  rule_groups    = var.etcd_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/etcd-rules.yaml",
      {
        etcd_selectors = join(",", compact(concat(var.selectors, var.etcd_selectors)))
      }
    )
  )
}
