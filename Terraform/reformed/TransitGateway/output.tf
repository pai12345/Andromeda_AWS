#===================Output Module - create Transit Gateway=====================#
output "output_generate_transit_gateway" {
  description = "Output Module - create Transit Gateway"
  sensitive   = false
  value       = module.generate_transit_gateway
}

#===================Output Module - create Transit Gateway Route Table=====================#
output "output_generate_transit_gateway_routetable" {
  description = "Output Module - create Transit Gateway Route Table"
  sensitive   = false
  value       = module.generate_transit_gateway_routetable
}