#===================Module Output for Creating S3 StaticWebSite=====================#
output "output_generate_StaticWebSite" {
  value       = module.generate_StaticWebSite
  sensitive   = false
  description = "Output for Module - Create S3 StaticWebSite"
}
