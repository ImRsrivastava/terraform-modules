output "aws_instance_public_ip" {
    value   =   module.ec2-instance.aws_instance_public_ip
}

output "aws_instance_public_dns" {
    value   =   module.ec2-instance.aws_instance_public_dns
}