module "ec2" {
    source = "./modules/ec2"
    instance_type = var.instance_type
}

module "vpc" {
    source = "./modules/vpc"
}