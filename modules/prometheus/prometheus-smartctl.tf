module "smartprom" {
  count   = var.enable_smartprom_alert ? 1 : 0
  source  = "timtorChen/grafana-rule-groups/module"
  version = "0.0.1"

  folder_name    = var.smartprom_folder_name
  annotations    = var.annotations
  labels         = var.labels
  datasource_uid = var.datasource_uid
  rule_groups    = var.smartprom_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/prometheus-smartctl-rules.yaml",
      {
        smartprom_selectors = join(",", compact(concat(var.selectors, var.smartprom_selectors)))
      }
    )
  )
}
