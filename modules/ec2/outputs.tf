output "aws_instance_public_ip" {
    value   =   aws_instance.terra_ec2[*].public_ip
}

output "aws_instance_public_dns" {
    value   =   aws_instance.terra_ec2[*].public_dns
}