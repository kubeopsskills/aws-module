output "subnet_id" {
    description = "Subnet ID"
    value = aws_subnet.subnet.id
}

output "subnet_name" {
    description = "Subnet Name"
    value = aws_subnet.subnet.tags["Name"]
}