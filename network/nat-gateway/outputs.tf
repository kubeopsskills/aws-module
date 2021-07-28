output "nat_gw_id" {
  description = "NAT Gateway ID"
  value       = aws_nat_gateway.nat_gw.id
}

output "nat_gw_name" {
  description = "NAT Gateway Name"
  value       = aws_nat_gateway.nat_gw.tags["Name"]
}