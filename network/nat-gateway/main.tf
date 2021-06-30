resource "aws_nat_gateway" "example" {
  subnet_id            = var.subnet_id
  allocation_id        = var.allocation_id
  connectivity_type    = var.connectivity_type
  tags                 = var.tags
}