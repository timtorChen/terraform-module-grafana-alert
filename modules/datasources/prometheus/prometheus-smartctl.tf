module "smartctl" {
  count          = var.enable_smartctl_alert ? 1 : 0
  source         = "../../rule-groups"
  folder_name    = var.smartctl_folder_name
  annotations    = var.annotations
  labels         = var.labels
  datasource_uid = var.datasource_uid
  rule_groups    = var.smartctl_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/prometheus-smartctl-rules.yaml",
      {
        smartctl_selectors = join(",", compact(concat(var.selectors, var.smartctl_selectors)))
      }
    )
  )
}
