module "node" {
  count   = var.enable_node_alert ? 1 : 0
  source  = "timtorChen/grafana-rule-groups/module"
  version = "0.0.1"

  folder_name    = var.node_folder_name
  annotations    = var.annotations
  labels         = var.labels
  datasource_uid = var.datasource_uid
  rule_groups    = var.node_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/node-exporter-rules.yaml",
      {
        node_selectors = join(",", compact(concat(var.selectors, var.node_selectors)))
      }
    )
  )
}
