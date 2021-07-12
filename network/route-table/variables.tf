variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "routes" {
  description = "A list of route objects. This argument is processed in attribute-as-blocks mode."
  type = list(object({
    cidr_block     = string,
    gateway_id     = string,
    nat_gateway_id = string
  }))
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
}