#===================Output VPC=====================#
output "output_andromeda_vpc" {
  description = "Output for creating new VPC"
  value       = aws_vpc.andromeda_vpc
}
