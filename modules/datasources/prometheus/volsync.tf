module "volsync" {
  count          = var.config.enable_volsync_alert ? 1 : 0
  source         = "../../rule-groups"
  folder_name    = var.config.volsync_folder_name
  datasource_uid = var.config.datasource_uid
  annotations    = var.config.annotations
  labels         = var.config.labels
  rule_groups    = var.config.volsync_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/volsync-rules.yaml",
      { volsync_selectors = join(",", compact(concat(var.config.selectors, var.config.volsync_selectors))) }
    )
  )
}
