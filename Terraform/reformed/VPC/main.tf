# module to generate VPC
module "generate_vpc" {
  source = "./modules/CreateVPC"
}

# module to generate Subnets
module "generate_subnets" {
  source = "./modules/CreateSubnets/"
  vpc_id = module.generate_vpc.output_andromeda_vpc.id
}