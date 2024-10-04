module "kubernetes" {
  count   = var.enable_kubernetes_alert ? 1 : 0
  source  = "timtorChen/grafana-rule-groups/module"
  version = "0.0.1"

  folder_name    = var.kubernetes_folder_name
  annotations    = var.annotations
  labels         = var.labels
  datasource_uid = var.datasource_uid
  rule_groups    = var.kubernetes_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/kubernetes-rules.yaml",
      {
        kubernetes_selectors = join(",", compact(concat(var.selectors, var.kubernetes_selectors)))
      }
    )
  )
}
