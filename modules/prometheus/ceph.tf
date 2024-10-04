module "ceph" {
  count   = var.enable_ceph_alert ? 1 : 0
  source  = "timtorChen/grafana-rule-groups/module"
  version = "0.0.1"

  folder_name    = var.ceph_folder_name
  annotations    = var.annotations
  labels         = var.labels
  datasource_uid = var.datasource_uid
  rule_groups    = var.ceph_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/ceph-rules.yaml",
      {
        ceph_selectors = join(", ", compact(concat(var.selectors, var.ceph_selectors)))
      }
    )
  )
}
