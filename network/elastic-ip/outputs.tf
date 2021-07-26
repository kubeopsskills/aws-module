output eip_id {
    description = "Elastic IP ID"
    value = aws_eip.eip.id
}

output "eip_name" {
    description = "Elastic IP Name"
    value = aws_eip.eip.tags["Name"]
}