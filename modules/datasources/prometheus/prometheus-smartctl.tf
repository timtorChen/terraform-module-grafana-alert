module "smartctl" {
  count          = var.config.enable_smartctl_alert ? 1 : 0
  source         = "../../rule-groups"
  folder_name    = var.config.smartctl_folder_name
  datasource_uid = var.config.datasource_uid
  annotations    = var.config.annotations
  labels         = var.config.labels
  static_rule_groups = yamldecode(
    templatefile("${path.module}/prometheus-smartctl-rules.yaml",
      { smartctl_selectors = join(",", compact(concat(var.config.selectors, var.config.smartctl_selectors))) }
    )
  )
  rule_groups = var.config.smartctl_rule_groups
}
