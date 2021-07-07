resource "aws_security_group" "security_group" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id
  dynamic "ingress" {
    for_each = [for i in var.ingresses : {
      description      = i.description
      from_port        = i.from_port
      to_port          = i.to_port
      protocol         = i.protocol
      security_groups  = i.security_groups
      cidr_blocks      = i.cidr_blocks
      ipv6_cidr_blocks = i.ipv6_cidr_blocks
    }]
    content {
      description      = ingress.value.description
      from_port        = ingress.value.from_port
      to_port          = ingress.value.to_port
      protocol         = ingress.value.protocol
      security_groups  = ingress.value.security_groups
      cidr_blocks      = ingress.value.cidr_blocks
      ipv6_cidr_blocks = ingress.value.ipv6_cidr_blocks
    }
  }

  dynamic "egress" {
    for_each = [for e in var.egresses : {
      description      = e.description
      from_port        = e.from_port
      to_port          = e.to_port
      protocol         = e.protocol
      security_groups  = e.security_groups
      cidr_blocks      = e.cidr_blocks
      ipv6_cidr_blocks = e.ipv6_cidr_blocks
    }]
    content {
      description      = egress.value.description
      from_port        = egress.value.from_port
      to_port          = egress.value.to_port
      protocol         = egress.value.protocol
      security_groups  = egress.value.security_groups
      cidr_blocks      = egress.value.cidr_blocks
      ipv6_cidr_blocks = egress.value.ipv6_cidr_blocks
    }
  }

  tags = var.tags
}