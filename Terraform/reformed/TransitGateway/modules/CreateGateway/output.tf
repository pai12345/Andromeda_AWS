#===================Output create Transit Gateway=====================#
output "output_create_gateway" {
  description = "Output create Transit Gateway"
  value       = aws_ec2_transit_gateway.create_gateway
}