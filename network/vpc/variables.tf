variable "cidr_block" {
  description = "The CIDR block for the VPC."
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
}