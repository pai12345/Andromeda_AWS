#===================Output for module - creating distribution=====================#
output "output_generate_create_distribution" {
  value       = module.generate_create_distribution
  sensitive   = false
  description = "Output for module - creating new distribution"
}

#===================Output for module - creating Origin Access Control=====================#
output "output_generate_create_originaccess" {
  value       = module.generate_create_originaccess
  sensitive   = false
  description = "Output for module - creating Origin Access Control"
}
