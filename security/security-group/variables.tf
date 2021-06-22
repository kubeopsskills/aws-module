variable "name" {
  description = "Name of the security group."
}

variable "description" {
  description = "Security group description."
}

variable "vpc_id" {
  description = "VPC ID."
}
variable "ingress" {
  description = "The AZ for the subnet."
}
variable "egress" {
  description = "The AZ for the subnet."
}


variable "tags" {
  description = "A map of tags to assign to the resource."
  type = map(string)
}