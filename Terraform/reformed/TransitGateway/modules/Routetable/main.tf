# Transit Gateway Route Table
resource "aws_ec2_transit_gateway_route_table" "create_gateway_routetable" {
  transit_gateway_id = var.transit_gateway_id
  tags = {
    type    = "transit_gateway_routetable"
    project = "andromeda"
  }
}