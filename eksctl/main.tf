resource "eksctl_cluster" "eksctl_cluster" {
  api_version = var.api_version
  vpc_id = var.vpc_id
  name = var.name
  region = var.region
  version = var.k8s_version
  tags = var.tags
  spec = var.spec
}

terraform {
  required_providers {
    eksctl = {
      source = "mumoshu/eksctl"
      version = "~>0.16.0"
    }
  }
}