
resource "aws_s3_bucket" "remote-s3" {
    bucket      =   "terra-modules-s3"

    tags        =   {
        Name    =   "terra-modules-s3"
    }
}