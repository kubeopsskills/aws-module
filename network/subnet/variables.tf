variable "vpc_id" {
  description = "The VPC ID."
}

variable "cidr_block" {
  description = "The CIDR block for the subnet."
}

variable "availability_zone" {
  description = "The AZ for the subnet."
}


variable "tags" {
  description = "A map of tags to assign to the resource."
  type = map(string)
}