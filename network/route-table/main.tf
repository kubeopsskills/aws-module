resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id

  dynamic "route" {
    for_each = [for r in var.routes : {
      cidr_block     = r.cidr_block
      gateway_id     = r.gateway_id
      nat_gateway_id = r.nat_gateway_id
    }]
    content {
      cidr_block     = route.value.cidr_block
      gateway_id     = route.value.gateway_id
      nat_gateway_id = route.value.nat_gateway_id
    }
  }

  tags = var.tags
}
resource "aws_route_table_association" "route_table_association" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.route_table.id
}