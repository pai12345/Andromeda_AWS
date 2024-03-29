# module to generate S3 bucket
module "generate_s3_bucket" {
  source = "./modules/Bucket"
}

# module for adding bucket policy
module "generate_s3_bucket_policy" {
  source    = "./modules/Policy"
  bucketid  = module.generate_s3_bucket.output_bucket.id
  bucketarn = module.generate_s3_bucket.output_bucket.arn
}

# module for configuring bucket website
module "generate_s3_bucket_website" {
  source = "./modules/StaticSite/"
  bucket = module.generate_s3_bucket.output_bucket.bucket
}