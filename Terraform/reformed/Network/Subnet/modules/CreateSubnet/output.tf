#===================Output Fetching VPC=====================#
output "output_fetch_vpc" {
  description = "Output for fetching VPC details"
  value       = data.aws_vpc.fetch_vpc
}

#===================Output Subnets=====================#
output "output_andromeda_subnets" {
  description = "Output for Subnets"
  value       = aws_subnet.andromeda_subnets
}
