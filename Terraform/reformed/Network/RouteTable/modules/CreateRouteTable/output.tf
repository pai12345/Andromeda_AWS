#===================Output fetching VPC=====================#
output "output_fetch_vpc" {
  description = "Output for fetching VPC details"
  value       = data.aws_vpc.fetch_vpc
}

#===================Output for fetching private subnet details=====================#
output "output_fetch_private" {
  description = "Output for fetching private subnet details"
  value       = data.aws_subnet.fetch_private
}

#===================Output for fetching public subnet details=====================#
output "output_fetch_public" {
  description = "Output for fetching public subnet details"
  value       = data.aws_subnet.fetch_public
}

#===================Output for creating Route Table for private subnet=====================#
output "output_private_routetable" {
  description = "Output for creating Route Table for private subnet"
  value       = aws_route_table.private_routetable
}

#===================Output for creating Route Table for public subnet=====================#
output "output_public_routetable" {
  description = "Output for creating Route Table for public subnet"
  value       = aws_route_table.public_routetable
}

#===================Output for associating route table with private subnet=====================#
output "output_privatesubnet_to_routetable" {
  description = "Output for associating route table with private subnet"
  value       = aws_route_table_association.private
}

#===================Output for associating route table with public subnet=====================#
output "output_publicsubnet_to_routetable" {
  description = "Output for associating route table with public subnet"
  value       = aws_route_table_association.public
}
