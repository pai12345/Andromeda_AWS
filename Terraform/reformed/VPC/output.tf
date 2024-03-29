#===================Output Module - generating vpc=====================#
output "output_generate_vpc" {
  value       = module.generate_vpc
  sensitive   = false
  description = "Output for Module - generating vpc"
}

#===================Output Module - generating subnets=====================#
output "output_generate_subnets" {
  value       = module.generate_subnets
  sensitive   = false
  description = "Output for Module - generating subnets"
}

#===================Output Module - generating internet gateway=====================#
output "output_generate_internet_gateway" {
  value       = module.generate_internet_gateway
  sensitive   = false
  description = "Output for Module - generating internet gateway"
}

#===================Output Module - generating Route Table=====================#
output "output_generate_route_table" {
  value       = module.generate_route_table
  sensitive   = false
  description = "Output for Module - generating Route Table"
}

#===================Output Module - generating NAT Gateway=====================#
output "output_generate_nat_gateway" {
  value       = module.generate_nat_gateway
  sensitive   = false
  description = "Output for Module - generating NAT Gateway"
}

#===================Output Module - generating EC2 instance=====================#
output "output_generate_ec2" {
  value       = module.generate_ec2
  sensitive   = false
  description = "Output for Module - generating EC2 instance"
}
