#===================Module Output for Creating S3 StaticWebSite=====================#
output "output_generate_StaticWebSite" {
  value       = module.generate_StaticWebSite
  sensitive   = false
  description = "Output for Module - Create S3 StaticWebSite"
}

#===================Module Output for Fetching Route53 Hosted Zone=====================#
output "output_generate_fetch_zone" {
  value       = module.generate_fetch_zone
  sensitive   = false
  description = "Output for Module - Fetch Route53 Hosted Zone"
}

#===================Module Output for Adding DNS Record=====================#
output "output_generate_add_record" {
  value       = module.generate_add_record
  sensitive   = false
  description = "Output for Module - Adding DNS Record"
}
