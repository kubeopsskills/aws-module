variable "vpc_id" {
  description = "The VPC ID."
}

variable "routes" {
  description = "A list of route objects. Their keys are documented below. This argument is processed in attribute-as-blocks mode."
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type = map(string)
}