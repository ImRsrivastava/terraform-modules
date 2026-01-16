
resource "aws_instance" "terra_ec2" {
    count = var.instanceCount
    # depends_on  =    [ aws_security_group.default_sg, aws_key_pair.terra-modules ]

    key_name            =   var.keyPair
    vpc_security_group_ids  =   [var.securityGroupId]
    instance_type       =   var.instanceType
    ami                 =   var.instanceAmiId

    # Create Volumes and attach to the instance
    root_block_device {
        volume_size =   var.rootStorageSize
        volume_type =   var.rootStorageType
    }

    tags = {
        Name = "${var.environment}-terra-modules-instance"
        Environment = var.environment
    }
}