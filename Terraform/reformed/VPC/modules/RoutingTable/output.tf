# Output for route table
output "output_andromeda_routing_table" {
  description = "Output for Route Table"
  value       = aws_route_table.andromeda_routing_table
}

# Output for route table associate
output "output_routetable_associate" {
  description = "Output for Route Table Associate"
  value       = aws_route_table_association.routetable_associate
}