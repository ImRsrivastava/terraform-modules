module "ec2-key-pair" {
    source          =   "../../modules/keypair"
    environment     =   "stage"
    publicFilePath  =   file("../../terra-key-ec2.pub") 
}


module "ec2-security-group" {
    source          =   "../../modules/security-group"
    environment     =   "stage"
}


module "ec2-instance" {
    source          =   "../../modules/ec2"
    environment     =   "stage"
    bucketName      =   "terra-modules-s3"
    instanceCount   =   1
    instanceType    =   "t2.micro"
    instanceAmiId   =   "ami-0ef0fafba270833fc"
    rootStorageSize =   10
    rootStorageType =   "gp3"
    hashKey         =   "stageModulesID"

    # 👇 THIS IS THE IMPORTANT PART
    keyPair         =   module.ec2-key-pair.key_name
    securityGroupId =   module.ec2-security-group.security_group_id
}