#===================Module Output for generating vpc=====================#
output "output_generate_vpc" {
  value       = module.generate_vpc
  sensitive   = false
  description = "Module Output for generating vpc"
}

#===================Module Output for generating subnets=====================#
output "output_generate_subnets" {
  value       = module.generate_subnets
  sensitive   = false
  description = "Module Output for generating subnets"
}