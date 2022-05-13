#===================Module Output for generating bucket=====================#
output output_generate_s3_bucket {
    value=module.generate_s3_bucket
    sensitive = false
    description = "Output for Module S3 bucket"
}

#===================Module Output for generating bucket=====================#
output output_generate_s3_bucket_policy {
    value=module.generate_s3_bucket_policy
    sensitive = false
    description = "Output for Module S3 bucket Policy"
}