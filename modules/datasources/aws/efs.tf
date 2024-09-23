module "efs" {
  count              = var.config.enable_efs_alert ? 1 : 0
  source             = "../../rule-groups"
  folder_name        = var.config.efs_folder_name
  datasource_uid     = var.config.datasource_uid
  annotations        = var.config.annotations
  labels             = var.config.labels
  rule_groups        = var.config.efs_rule_groups
  static_rule_groups = yamldecode(file("${path.module}/efs-rules.yaml"))
}
