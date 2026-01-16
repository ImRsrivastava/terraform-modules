
variable "environment" {
    description =   "This is the environment variable for my Infrastructure."
    type        =   string
}

variable "publicFilePath" {
    description =   "This is the system public ssh key file path to access ec2 instance through ssh for my Infrastructure."
    type        =   string
}