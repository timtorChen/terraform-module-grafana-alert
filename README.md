# Terraform grafana alert module

⚠️ This project is still under development; use it with caution.

Terraform module to create grafana-alerts.

## Usage

```hcl
resource "grafana_data_source" "prometheus" {
}

resource "grafana_data_source" "aws" {
}

module "grafana-alert" {
  source  = "timtorChen/grafana-alert/module"
  version = "0.0.1-pre"

  prometheus = {
    datasource_uid = grafana_data_source.prometheus.uid
    enable_node_alert = true
    enable_kubernetes_alert = true
  }

  aws = {
    datasource_uid = grafana_data_source.aws.uid
    enable_efs_alert = true
  }
}
```

<!-- BEGIN_TF_DOCS -->

## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name                                                              | Source                           | Version |
| ----------------------------------------------------------------- | -------------------------------- | ------- |
| <a name="module_aws"></a> [aws](#module_aws)                      | ./modules/datasources/aws        | n/a     |
| <a name="module_prometheus"></a> [prometheus](#module_prometheus) | ./modules/datasources/prometheus | n/a     |

## Resources

No resources.

## Inputs

| Name                                                            | Description       | Type  | Default | Required |
| --------------------------------------------------------------- | ----------------- | ----- | ------- | :------: |
| <a name="input_aws"></a> [aws](#input_aws)                      | AWS alerts        | `any` | `{}`    |    no    |
| <a name="input_prometheus"></a> [prometheus](#input_prometheus) | Prometheus alerts | `any` | `{}`    |    no    |

## Outputs

No outputs.

<!-- END_TF_DOCS -->
