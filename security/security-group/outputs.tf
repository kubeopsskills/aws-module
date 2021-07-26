output security_group_id {
    description = "Security Group ID"
    value = aws_security_group.security_group.id
}