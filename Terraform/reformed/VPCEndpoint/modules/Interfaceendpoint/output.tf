#===================Output for VPC Interface Endpoint=====================#
output "output_vpc_interface" {
  description = "Output for VPC Interface Endpoint"
  value       = aws_vpc_endpoint.vpc_interface
}