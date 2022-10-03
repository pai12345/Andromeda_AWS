#===================Output for creating distribution=====================#
output "output_create_distribution" {
  value       = aws_cloudfront_distribution.create_distribution
  sensitive   = false
  description = "Output for creating new distribution"
}
