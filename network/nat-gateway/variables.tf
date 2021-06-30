variable "subnet_id" {
  description = "The Subnet ID of the subnet in which to place the gateway."
}

variable "allocation_id" {
  description = "The Allocation ID of the Elastic IP address for the gateway."
}

# variable "connectivity_type" {
#   description = "Connectivity type for the gateway. Valid values are private and public."
# }

variable "tags" {
  description = "A map of tags to assign to the resource."
  type = map(string)
}