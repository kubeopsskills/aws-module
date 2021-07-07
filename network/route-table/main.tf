resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id
  route  = var.route

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