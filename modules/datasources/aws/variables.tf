variable "config" {
  type = object({
    datasource_uid = string
    contact_point  = optional(string, null)
    labels         = optional(map(string), {})
    annotations    = optional(map(string), {})

    # efs
    enable_efs_alert = optional(bool, false)
    efs_folder_name  = optional(string, "efs")
    efs_rule_groups  = optional(any)
  })

}
