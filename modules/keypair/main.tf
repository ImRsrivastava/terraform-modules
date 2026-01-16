
resource "aws_key_pair" "terra-modules" {
    key_name    =   "${var.environment}-terra-modules"
    public_key  =   var.publicFilePath      // Path of public key which will be created using ssh-keygen command

    tags    =   {
        Environment =   var.environment
    }
}