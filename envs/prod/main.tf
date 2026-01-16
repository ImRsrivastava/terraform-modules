module "ec2-key-pair" {
    source          =   "../../modules/keypair"
    environment     =   "prod"
    publicFilePath  =   file("../../terra-key-ec2.pub")
}


module "ec2-security-group" {
    source          =   "../../modules/security-group"
    environment     =   "prod"
}


module "ec2-instance" {
    source          =   "../../modules/ec2"
    environment     =   "prod"
    bucketName      =   "terra-modules-s3"
    instanceCount   =   2
    instanceType    =   "t2.large"
    instanceAmiId   =   "ami-0ef0fafba270833fc"
    rootStorageSize =   20
    rootStorageType =   "gp3"
    hashKey         =   "prodModulesID"

    keyPair         =   module.ec2-key-pair.key_name
    securityGroupId =   module.ec2-security-group.security_group_id
}