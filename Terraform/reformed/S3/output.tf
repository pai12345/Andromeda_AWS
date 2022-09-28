#===================Module Output for generating bucket=====================#
output "output_generate_s3_bucket" {
  value       = module.generate_s3_bucket
  sensitive   = false
  description = "Output for Module S3 bucket"
}

#===================Module Output for generating bucket=====================#
output "output_generate_s3_bucket_policy" {
  value       = module.generate_s3_bucket_policy
  sensitive   = false
  description = "Output for Module S3 bucket Policy"
}

#===================Module Output for generating bucket website=====================#
output "output_generate_s3_bucket_website" {
  value       = module.generate_s3_bucket_website
  sensitive   = false
  description = "Output for Module configuring S3 bucket website"
}