module "generate_s3_logbucket"{
    source = "./modules/LogBucket"
}

module "generate_s3"{
    source = "./modules/CreateBucket"
    target_bucket = module.generate_s3_logbucket.output_s3logbucket.id
}

module "generate_bucketpolicy"{
    source = "./modules/BucketPolicy"
    bucket = module.generate_s3.output_s3bucket.id
    bucketarn = module.generate_s3.output_s3bucket.arn
}