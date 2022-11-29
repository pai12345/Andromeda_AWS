#===================Output VPC=====================#
output "output_andromeda_vpc" {
  description = "Output for VPC"
  value       = aws_vpc.andromeda_vpc
}