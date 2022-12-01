# Creating an Route Table for the public subnet!
# create route table
resource "aws_route_table" "andromeda_routing_table" {
  vpc_id = var.vpc_id
  # NAT Rule
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }
  tags = {
    type    = "route_table"
    project = "andromeda"
  }
}

# associate a subnet to a route table
resource "aws_route_table_association" "routetable_associate" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.andromeda_routing_table.id
}