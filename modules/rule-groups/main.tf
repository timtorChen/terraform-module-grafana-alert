resource "grafana_folder" "this" {
  count = var.enable ? 1 : 0
  title = var.folder_name
}

resource "grafana_rule_group" "this" {
  for_each           = { for group in var.static_rule_groups : group.name => group }
  name               = each.value.name
  folder_uid         = grafana_folder.this[0].uid
  interval_seconds   = each.value.interval_seconds
  disable_provenance = !try(each.value.enable_edit, false)

  dynamic "rule" {
    for_each = { for rule in each.value.rules : rule.name => rule }
    iterator = rule
    content {
      name           = rule.value.name
      condition      = rule.value.condition
      no_data_state  = rule.value.no_data_state
      exec_err_state = rule.value.exec_err_state
      for            = rule.value.for
      annotations = merge(
        rule.value.annotations,
        try(var.annotations, null),
        try(var.rule_groups.annotations, null)
      )
      labels = merge(
        rule.value.labels,
        try(var.labels, null),
        try(var.rule_groups.labels, null)
      )
      is_paused = (
        try(var.rule_groups.pause, false) ||
        try(var.rule_groups.rule_group["${each.key}"].pause, false) ||
        try(var.rule_groups.rule_group["${each.key}"].rule["${rule.key}"].pause, false)
      )
      # TODO: Remove model modification in terraform, use yaml modification script instead.
      dynamic "data" {
        for_each = rule.value.datas
        iterator = data
        content {
          ref_id = data.value.ref_id
          datasource_uid = (
            try(data.value.model.type, null) == null ?
            var.datasource_uid : local.expression_datasource_uid
          )
          model = jsonencode(merge(data.value.model, {
            refId = data.value.ref_id,
          }))
          relative_time_range {
            from = local.default_query_time_range.from
            to   = local.default_query_time_range.to
          }
        }
      }
    }
  }
}
