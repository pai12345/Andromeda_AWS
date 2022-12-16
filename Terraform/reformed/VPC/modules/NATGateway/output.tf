#===================Output for creating Elastic IP=====================#
output "output_aws_eip" {
  value       = aws_eip.eip
  sensitive   = false
  description = "Output for creating Elastic IP"
}

#===================Output for creating NAT Gateway=====================#
output "output_nat_gateway" {
  value       = aws_nat_gateway.nat_gateway
  sensitive   = false
  description = "Output for creating NAT Gateway"
}