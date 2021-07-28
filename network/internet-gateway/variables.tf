variable "vpc_id" {
  description = "VPC ID"
}
variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
}