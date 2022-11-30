locals {
  vpc_id = module.generate_vpc.output_andromeda_vpc.id
}

# module to generate VPC
module "generate_vpc" {
  source = "./modules/CreateVPC"
}

# module to generate Subnets
module "generate_subnets" {
  source = "./modules/CreateSubnets/"
  vpc_id = local.vpc_id
}

# module to generate Internet Gateway
module "generate_internet_gateway" {
  source = "./modules/InternetGateway/"
  vpc_id = local.vpc_id
}

# generate EC2 instance
module "generate_ec2" {
  source    = "./modules/EC2"
  vpc_id    = local.vpc_id
  subnet_id = module.generate_subnets.output_andromeda_subnets[0].id
  depends_on = [
    module.generate_internet_gateway
  ]
}