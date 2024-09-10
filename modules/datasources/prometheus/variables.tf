variable "config" {
  type = object({
    datasource_uid = string
    contact_point  = optional(string, null)
    labels         = optional(map(string), {})
    annotations    = optional(map(string), {})
    selectors      = optional(list(string), [])

    # etcd
    enable_etcd_alert = optional(bool, false)
    etcd_folder_name  = optional(string, "etcd")
    etcd_rule_groups  = optional(any)
    # query vars
    etcd_selectors = optional(list(string), [])

    # ceph
    enable_ceph_alert = optional(bool, false)
    ceph_folder_name  = optional(string, "ceph")
    ceph_rule_groups  = optional(any)
    ## query vars
    ceph_selectors = optional(list(string), [])

    # node-exporter
    enable_node_alert = optional(bool, false)
    node_folder_name  = optional(string, "node-exporter")
    node_rule_groups  = optional(any)
    ## query vars
    node_selectors = optional(list(string), [])

    # smartctl-exporter
    enable_smartctl_alert = optional(bool, false)
    smartctl_folder_name  = optional(string, "prometheus-smartctl")
    smartctl_rule_groups  = optional(any)
    # query vars
    smartctl_selectors = optional(list(string), [])
  })
}
