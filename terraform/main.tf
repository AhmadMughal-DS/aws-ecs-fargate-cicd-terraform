locals {
  name_prefix = var.project_name
}

module "fargate" {
  source          = "./modules/fargate"
  name_prefix     = local.name_prefix
  aws_region      = var.aws_region
  vpc_cidr        = var.vpc_cidr
  container_image = var.container_image
  container_port  = var.container_port
  desired_count   = var.desired_count
  max_count       = var.max_count
}
