module "node" {
  count          = var.config.enable_node_alert ? 1 : 0
  source         = "../../rule-groups"
  folder_name    = var.config.node_folder_name
  datasource_uid = var.config.datasource_uid
  annotations    = var.config.annotations
  labels         = var.config.labels
  static_rule_groups = yamldecode(
    templatefile("${path.module}/node-exporter-rules.yaml",
      { node_selectors = join(",", compact(concat(var.config.selectors, var.config.node_selectors))) }
    )
  )
  rule_groups = var.config.node_rule_groups
}
