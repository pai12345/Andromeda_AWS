# create Transit Gateway
resource "aws_ec2_transit_gateway" "create_gateway" {
  description                     = "AWS Transit Gateway"
  dns_support                     = "enable"
  auto_accept_shared_attachments  = "disable"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"
  tags = {
    type    = "transit_gateway"
    project = "andromeda"
  }
}