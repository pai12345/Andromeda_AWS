#===================Output S3 Create bucket=====================#
output "output_bucket" {
  description = "Output for S3 Create Bucket"
  value       = aws_s3_bucket.create_bucket
}

#===================Output S3 bucket poilcy=====================#
output "output_bucket_policy" {
  description = "Output for S3 Bucket Policy"
  value       = aws_s3_bucket_policy.bucket_policy
}

#===================Output S3 StaticWebsite file configuration=====================#
output "output_staticwebsite" {
  description = "Output for S3 StaticWebsite file configuration"
  value       = aws_s3_bucket_website_configuration.staticwebsite
}