# module to Create S3 StaticWebSite
module "generate_StaticWebSite" {
  source     = "./modules/StaticWebSite"
  bucketname = var.bucketname
}