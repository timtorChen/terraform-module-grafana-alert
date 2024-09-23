module "kubernetes" {
  count          = var.config.enable_kubernetes_alert ? 1 : 0
  source         = "../../rule-groups"
  folder_name    = var.config.kubernetes_folder_name
  datasource_uid = var.config.datasource_uid
  annotations    = var.config.annotations
  labels         = var.config.labels
  rule_groups    = var.config.kubernetes_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/kubernetes-rules.yaml",
      { kubernetes_selectors = join(",", compact(concat(var.config.selectors, var.config.kubernetes_selectors))) }
    )
  )
}
