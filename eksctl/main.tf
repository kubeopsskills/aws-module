resource "eksctl_cluster" "eksctl_cluster" {
  api_version = var.api_version
  name = var.name
  region = var.region
  version = var.version
  tags = var.tags
  spec = var.spec
}