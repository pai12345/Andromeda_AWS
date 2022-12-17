# module to generate Transit Gateway
module "generate_transit_gateway" {
  source = "./modules/CreateGateway"
}

# module to generate Transit Gateway Route Table
module "generate_transit_gateway_routetable" {
  source             = "./modules/Routetable"
  transit_gateway_id = module.generate_transit_gateway.output_create_gateway.id
}
