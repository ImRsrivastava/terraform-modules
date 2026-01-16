
variable "environment" {
    description =   "This is the environment variable for my Infrastructure."
    type        =   string
}

variable "bucketName" {
    description =   "This is the bucket name variable for my Infrastructure."
    type        =   string
}

variable "instanceCount" {
    description =   "This is the number of ec2 instance, how many you need."
    type        =   number
}

variable "instanceType" {
    description =   "This is the type of ec2 instance for my Infrastructure."
    type        =   string
}

variable "instanceAmiId" {
    description =   "This is the type of AMI for my Infrastructure."
    type        =   string
}

variable "rootStorageSize" {
    description =   "This is the number of ec2 instance size, how many you need."
    type        =   number
}

variable "rootStorageType" {
    description =   "This is the storage type of ec2 instance for your Infrastructure."
    type        =   string
}

variable "hashKey" {
    description =   "This is the hash key for DynamoDB table for your Infrastructure."
    type        =   string
}

variable "keyPair" {
    description =   "This is the key-pair for ec2 instance to connect via ssh connection."
    type        =   string
}

variable "securityGroupId" {
    description =   "This is the ID of Security Group for ec2 instance to allow the firewall."
    type        =   string
}