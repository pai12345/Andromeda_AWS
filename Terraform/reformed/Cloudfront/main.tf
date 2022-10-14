module "generate_create_originaccess" {
  source = "./modules/S3/CreateOriginAccessControl/"
}

module "generate_create_distribution" {
  source                   = "./modules/S3/CreateDistribution/"
  origin_access_control_id = module.generate_create_originaccess.output_create_originaccess.id
}
