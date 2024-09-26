module "ceph" {
  count       = var.enable_ceph_alert ? 1 : 0
  source      = "../../rule-groups"
  folder_name = var.ceph_folder_name
  annotations = var.annotations
  labels      = var.labels
  rule_groups = var.ceph_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/ceph-rules.yaml",
      {
        datasource_uid = var.datasource_uid,
        ceph_selectors = join(", ", compact(concat(var.selectors, var.ceph_selectors)))
      }
    )
  )
}
