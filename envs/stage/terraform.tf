terraform   {
    required_providers  {
        aws =   {
            source  =   "hashicorp/aws"
            version =   "6.28.0"
        }
    }

    backend "s3" {
        bucket          =   "terra-modules-s3"
        key             =   "stage/ec2/terraform.tfstate"
        region          =   "eu-west-1"
        dynamodb_table  =   "terra-modules-table"
        encrypt         =   true
    }
}