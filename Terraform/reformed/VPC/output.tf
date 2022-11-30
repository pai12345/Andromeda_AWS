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

#===================Output Module generating internet gateway=====================#
output "output_generate_internet_gateway" {
  value       = module.generate_internet_gateway
  sensitive   = false
  description = "Output for Module - generating internet gateway"
}


#===================Output Module generating EC2 instance=====================#
output "output_generate_ec2" {
  value       = module.generate_ec2
  sensitive   = false
  description = "Output for Module - generating EC2 instance"
}
