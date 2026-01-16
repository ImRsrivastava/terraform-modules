
# Using Default VPC and Default Security Group
resource "aws_default_vpc" "default" {
    tags = {
        Name = "${var.environment}-default-vpc"
        Environment = var.environment
    }
}

resource "aws_security_group" "default_sg" {
    name = "${var.environment}-terra-modules-sg"
    description = "I am generating this security group specifically for Terraform practice and will delete it once the practice is complete."
    vpc_id = aws_default_vpc.default.id     // It is called interpolation. Interpolation means referencing the attribute of another resource. Interpolation is a way to reference the attribute of another resource.

    # Inbound rule, also known as ingress, to allow different types of traffic to the EC2 instance
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]             # We can allow multiple IP addresses or CIDR blocks by adding them in the list format.
        description = "Allow SSH"
    }
    ingress {
        from_port = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow Http"
    }
    ingress {
        from_port   =   443
        to_port     =   443
        protocol    =   "tcp"
        cidr_blocks =   ["0.0.0.0/0"]
        description =   "Allow Https"
    }

    # Outbound rule, also known as egress, to allow different types of traffic from the EC2 instance
    egress {
        from_port   =   0
        to_port     =   0 
        protocol    =   "-1"                       # -1 means Port Range`all` protocols
        cidr_blocks =   ["0.0.0.0/0"]
        description =   "Allow all outbound traffic"
    }

    tags = {
        Name = "${var.environment}-terra-modules-sg"
        Environment = var.environment
    }
}