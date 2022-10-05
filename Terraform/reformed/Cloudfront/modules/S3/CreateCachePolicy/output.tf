#===================Output for creating cache policy=====================#
output "output_create_policy" {
  value       = aws_cloudfront_cache_policy.create_policy
  sensitive   = false
  description = "Output for creating cache policy"
}
