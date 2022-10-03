#===================Output for create Origin Access Control=====================#
output "output_create_originaccess" {
  value       = aws_cloudfront_origin_access_control.create_originaccess
  sensitive   = false
  description = "Output for creating origin access control for S3"
}
