output "security_group_id" {
    value   =   aws_security_group.default_sg.id
}

output "security_group_name" {
    value = aws_security_group.default_sg.name
}
