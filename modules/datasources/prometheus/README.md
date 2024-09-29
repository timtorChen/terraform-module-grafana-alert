<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ceph"></a> [ceph](#module\_ceph) | ../../rule-groups | n/a |
| <a name="module_etcd"></a> [etcd](#module\_etcd) | ../../rule-groups | n/a |
| <a name="module_kubernetes"></a> [kubernetes](#module\_kubernetes) | ../../rule-groups | n/a |
| <a name="module_node"></a> [node](#module\_node) | ../../rule-groups | n/a |
| <a name="module_smartprom"></a> [smartprom](#module\_smartprom) | ../../rule-groups | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datasource_uid"></a> [datasource\_uid](#input\_datasource\_uid) | n/a | `string` | n/a | yes |
| <a name="input_contact_point"></a> [contact\_point](#input\_contact\_point) | n/a | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | n/a | `map(string)` | `{}` | no |
| <a name="input_annotations"></a> [annotations](#input\_annotations) | n/a | `map(string)` | `{}` | no |
| <a name="input_selectors"></a> [selectors](#input\_selectors) | n/a | `list(string)` | `[]` | no |
| <a name="input_enable_etcd_alert"></a> [enable\_etcd\_alert](#input\_enable\_etcd\_alert) | etcd | `bool` | `false` | no |
| <a name="input_etcd_folder_name"></a> [etcd\_folder\_name](#input\_etcd\_folder\_name) | n/a | `string` | `"etcd"` | no |
| <a name="input_etcd_rule_groups"></a> [etcd\_rule\_groups](#input\_etcd\_rule\_groups) | n/a | `any` | `null` | no |
| <a name="input_etcd_selectors"></a> [etcd\_selectors](#input\_etcd\_selectors) | n/a | `list(string)` | `[]` | no |
| <a name="input_enable_ceph_alert"></a> [enable\_ceph\_alert](#input\_enable\_ceph\_alert) | ceph | `bool` | `false` | no |
| <a name="input_ceph_folder_name"></a> [ceph\_folder\_name](#input\_ceph\_folder\_name) | n/a | `string` | `"ceph"` | no |
| <a name="input_ceph_rule_groups"></a> [ceph\_rule\_groups](#input\_ceph\_rule\_groups) | n/a | `any` | `null` | no |
| <a name="input_ceph_selectors"></a> [ceph\_selectors](#input\_ceph\_selectors) | n/a | `list(string)` | `[]` | no |
| <a name="input_enable_node_alert"></a> [enable\_node\_alert](#input\_enable\_node\_alert) | node-exporter | `bool` | `false` | no |
| <a name="input_node_folder_name"></a> [node\_folder\_name](#input\_node\_folder\_name) | n/a | `string` | `"node-exporter"` | no |
| <a name="input_node_rule_groups"></a> [node\_rule\_groups](#input\_node\_rule\_groups) | n/a | `any` | `null` | no |
| <a name="input_node_selectors"></a> [node\_selectors](#input\_node\_selectors) | n/a | `list(string)` | `[]` | no |
| <a name="input_enable_smartprom_alert"></a> [enable\_smartprom\_alert](#input\_enable\_smartprom\_alert) | matusnovak/prometheus-smartctl | `bool` | `false` | no |
| <a name="input_smartprom_folder_name"></a> [smartprom\_folder\_name](#input\_smartprom\_folder\_name) | n/a | `string` | `"smartprom"` | no |
| <a name="input_smartprom_rule_groups"></a> [smartprom\_rule\_groups](#input\_smartprom\_rule\_groups) | n/a | `any` | `null` | no |
| <a name="input_smartprom_selectors"></a> [smartprom\_selectors](#input\_smartprom\_selectors) | n/a | `list(string)` | `[]` | no |
| <a name="input_enable_kubernetes_alert"></a> [enable\_kubernetes\_alert](#input\_enable\_kubernetes\_alert) | kubernetes | `bool` | `false` | no |
| <a name="input_kubernetes_folder_name"></a> [kubernetes\_folder\_name](#input\_kubernetes\_folder\_name) | n/a | `string` | `"kubernetes"` | no |
| <a name="input_kubernetes_rule_groups"></a> [kubernetes\_rule\_groups](#input\_kubernetes\_rule\_groups) | n/a | `any` | `null` | no |
| <a name="input_kubernetes_selectors"></a> [kubernetes\_selectors](#input\_kubernetes\_selectors) | n/a | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->