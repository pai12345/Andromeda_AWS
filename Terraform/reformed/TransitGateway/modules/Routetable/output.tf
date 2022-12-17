#===================Output create Transit Gateway Route Table=====================#
output "output_create_gateway_routetable" {
  description = "Output create Transit Gateway Route Table"
  value       = aws_ec2_transit_gateway_route_table.create_gateway_routetable
}