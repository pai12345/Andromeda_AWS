#===================Output Module generate_s3=====================#
output output_generate_s3 {
    value=module.generate_s3
    sensitive = false
    description = "Output for Module S3 CreateBucket"
}

#===================Output Module generate_s3_logbucket=====================#
output output_generate_s3 {
    value=module.generate_s3_logbucket
    sensitive = false
    description = "Output for Module S3 LogBucket"
}