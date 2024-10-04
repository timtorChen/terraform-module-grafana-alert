# Terraform grafana alert module

⚠️ This project is still under development; use it with caution.

Terraform module to create grafana alerts.

## Usage

The `grafana_data_source.uid` is required to be predefined.

```hcl
resource "grafana_data_source" "prometheus" {
  # required
  uid = "example-prometheus"
}

resource "grafana_data_source" "aws" {
  # required
  uid = "example-aws"
}

module "grafana-alert" {
  source  = "timtorChen/grafana-alert/module"
  version = "~> 0.4.0"

  prom_datasource_uid = grafana_data_source.prometheus.uid
  enable_ceph_alert   = true
  enable_etcd_alert   = true
  enable_node_alert   = true

  aws_datasource_uid = grafana_data_source.aws.uid
  enable_efs_alert   = true
}
```
