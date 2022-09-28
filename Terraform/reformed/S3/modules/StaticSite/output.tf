#===================Output S3 bucket configuration=====================#
output "output_configure_website" {
  description = "S3 Bucket"
  value       = aws_s3_bucket_website_configuration.configure_website
}