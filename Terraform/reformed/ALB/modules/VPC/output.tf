#===================Output for fetching vpc=====================#
output "output_fetch_vpc" {
  description = "Output for fetching vpc"
  sensitive   = false
  value       = data.aws_vpc.fetch_vpc
}

#===================Output for fetching vpc subnets=====================#
output "output_fetch_subnets" {
  description = "Output for fetching vpc subnets"
  sensitive   = false
  value       = data.aws_subnets.fetch_subnets
}