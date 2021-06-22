resource "aws_security_group" "security_group" {
  name               = var.name
  description        = var.description
  vpc_id             = var.vpc_id
  ingress            = {
    description      = var.description
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    security_groups  = var.security_groups
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }
  egress             = {
    description      = var.description
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    security_groups  = var.security_groups
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }
  tags          = var.tags
}