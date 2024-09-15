module "ceph" {
  count          = var.config.enable_ceph_alert ? 1 : 0
  source         = "../../rule-groups"
  folder_name    = var.config.ceph_folder_name
  datasource_uid = var.config.datasource_uid
  annotations    = var.config.annotations
  labels         = var.config.labels
  rule_groups    = var.config.ceph_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/ceph-rules.yaml",
      { ceph_selectors = join(", ", compact(concat(var.config.selectors, var.config.ceph_selectors))) }
    )
  )
}
