module "node" {
  count          = var.enable_node_alert ? 1 : 0
  source         = "../../rule-groups"
  folder_name    = var.node_folder_name
  datasource_uid = var.datasource_uid
  annotations    = var.annotations
  labels         = var.labels
  rule_groups    = var.node_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/node-exporter-rules.yaml",
      { node_selectors = join(",", compact(concat(var.selectors, var.node_selectors))) }
    )
  )
}
