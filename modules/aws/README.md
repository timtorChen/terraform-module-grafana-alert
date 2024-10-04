<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_efs"></a> [efs](#module\_efs) | timtorChen/grafana-rule-groups/module | 0.0.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datasource_uid"></a> [datasource\_uid](#input\_datasource\_uid) | n/a | `string` | n/a | yes |
| <a name="input_contact_point"></a> [contact\_point](#input\_contact\_point) | n/a | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | n/a | `map(string)` | `{}` | no |
| <a name="input_annotations"></a> [annotations](#input\_annotations) | n/a | `map(string)` | `{}` | no |
| <a name="input_enable_efs_alert"></a> [enable\_efs\_alert](#input\_enable\_efs\_alert) | -- efs | `bool` | `false` | no |
| <a name="input_efs_folder_name"></a> [efs\_folder\_name](#input\_efs\_folder\_name) | n/a | `string` | `"efs"` | no |
| <a name="input_efs_rule_groups"></a> [efs\_rule\_groups](#input\_efs\_rule\_groups) | n/a | `any` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->