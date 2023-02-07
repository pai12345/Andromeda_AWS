# create internet gateway
resource "aws_internet_gateway" "andromeda_internet_gateway" {
  vpc_id = var.vpc_id
  tags = {
    type    = "internet_gateway"
    project = "andromeda"
  }
}