# elastic ip
resource "aws_eip" "eip" {
  vpc = true
  tags = {
    type    = "elastic_ip"
    project = "andromeda"
  }
}

# nat gateway
resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.eip.id
  subnet_id     = var.subnet_id
  tags = {
    type    = "nat_gateway"
    project = "andromeda"
  }
}
