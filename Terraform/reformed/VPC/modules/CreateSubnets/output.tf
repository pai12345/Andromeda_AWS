#===================Output Subnets=====================#
output "output_andromeda_subnets" {
  description = "Output for Subnets"
  value       = aws_subnet.andromeda_subnets
}