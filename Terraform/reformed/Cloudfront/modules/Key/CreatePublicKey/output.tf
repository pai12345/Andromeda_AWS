#===================Output for creating CF public key=====================#
output "output_create_key" {
  value       = aws_cloudfront_public_key.create_key
  sensitive   = false
  description = "Output for creating CF public key"
}
