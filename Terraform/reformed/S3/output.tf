#===================Module Output for generating bucket=====================#
output output_generate_s3 {
    value=module.generate_s3_bucket
    sensitive = false
    description = "Output for Module S3 bucket"
}