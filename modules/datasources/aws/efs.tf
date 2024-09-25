module "efs" {
  count       = var.enable_efs_alert ? 1 : 0
  source      = "../../rule-groups"
  folder_name = var.efs_folder_name
  annotations = var.annotations
  labels      = var.labels
  rule_groups = var.efs_rule_groups
  static_rule_groups = yamldecode(
    templatefile("${path.module}/efs-rules.yaml",
      {
        datasource_uid = var.datasource_uid
      }
  ))
}
