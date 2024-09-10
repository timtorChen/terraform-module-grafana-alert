module "prometheus" {
  count  = var.prometheus != null ? 1 : 0
  source = "./modules/datasources/prometheus"
  config = var.prometheus
}

module "aws" {
  count  = var.aws != null ? 1 : 0
  source = "./modules/datasources/aws"
  config = var.aws
}
