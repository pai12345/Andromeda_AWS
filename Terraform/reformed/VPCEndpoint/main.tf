locals {
  vpc_id = module.generate_vpc.output_andromeda_vpc.id
}

# module to generate VPC
module "generate_vpc" {
  source = "./modules/CreateVPC"
}

# module to generate Subnets
module "generate_subnets" {
  source  = "./modules/CreateSubnets"
  vpc_id  = local.vpc_id
  subnets = var.subnets
}

# module to generate Internet Gateway
module "generate_internet_gateway" {
  source = "./modules/InternetGateway"
  vpc_id = local.vpc_id
}

# module to generate Route Table
module "generate_route_table" {
  source     = "./modules/RoutingTable"
  vpc_id     = local.vpc_id
  gateway_id = module.generate_internet_gateway.output_andromeda_internet_gateway.id
  subnet_id  = module.generate_subnets.output_andromeda_subnets[0].id
}

# generate EC2 instance
module "generate_ec2" {
  source            = "./modules/EC2"
  vpc_id            = local.vpc_id
  subnet_id_public  = module.generate_subnets.output_andromeda_subnets[0].id
  subnet_id_private = module.generate_subnets.output_andromeda_subnets[1].id
  depends_on = [
    module.generate_route_table
  ]
}

# generate VPC Interface Endpoint
module "generate_vpcendpoint" {
  source             = "./modules/Interfaceendpoint"
  vpc_id             = local.vpc_id
  subnet_ids         = [module.generate_subnets.output_andromeda_subnets[1].id]
  security_group_ids = [module.generate_ec2.output_secgrp_create_private.id]
}

