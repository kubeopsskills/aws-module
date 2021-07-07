variable "name" {
  description = "Name of the security group."
  type = string
}

variable "description" {
  description = "Security group description."
  type = string
}

variable "vpc_id" {
  description = "VPC ID."
  type = string
}
variable "ingresses" {
  description = "Ingress Rules"
  type = list(object({
    description = string,
    from_port = string,
    to_port = string,
    protocol = string,
    security_groups = list(string),
    cidr_blocks = list(string),
    ipv6_cidr_blocks = list(string)
  }))
}
variable "egresses" {
  description = "Egress Rules"
  type = list(object({
    description = string,
    from_port = string,
    to_port = string,
    protocol = string,
    security_groups = list(string),
    cidr_blocks = list(string),
    ipv6_cidr_blocks = list(string)
  }))
}


variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
}