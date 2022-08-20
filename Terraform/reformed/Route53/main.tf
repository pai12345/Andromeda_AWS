# module to Create S3 StaticWebSite
module "generate_StaticWebSite" {
  source     = "./modules/StaticWebSite"
  bucketname = var.bucketname
}

# module to fetch Hosted Zone
module "generate_fetch_zone" {
  source = "./modules/GetZone"
}

# module to Add DNS Record
module "generate_add_record" {
  source         = "./modules/AddRecord"
  dns_name       = var.bucketname
  website_name   = module.generate_StaticWebSite.output_staticwebsite.website_domain
  bucket_zone_id = module.generate_StaticWebSite.output_bucket.hosted_zone_id
  hosted_zone_id = module.generate_fetch_zone.output_fetch_zone.id
}
