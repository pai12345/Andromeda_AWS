locals {
  vpc_id = data.aws_vpc.fetch_vpc.id
}

# fetch vpc details
data "aws_vpc" "fetch_vpc" {
  tags = {
    Name    = "andromeda"
    type    = "vpc"
    project = "andromeda"
  }
}

# fetch private subnet
data "aws_subnet" "fetch_private" {
  vpc_id = local.vpc_id
  tags = {
    tier    = "private"
    type    = "subnet"
    project = "andromeda"
  }
}

# fetch public subnet
data "aws_subnet" "fetch_public" {
  vpc_id = local.vpc_id
  tags = {
    tier    = "public"
    type    = "subnet"
    project = "andromeda"
  }
}

resource "aws_route_table" "private_routetable" {
  vpc_id = local.vpc_id
  tags = {
    tier    = "private"
    type    = "routetable"
    project = "andromeda"
  }
}

resource "aws_route_table" "public_routetable" {
  vpc_id = local.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
  }
  tags = {
    tier    = "public"
    type    = "routetable"
    project = "andromeda"
  }
}

# associate route table with private subnet
resource "aws_route_table_association" "private" {
  subnet_id      = data.aws_subnet.fetch_private.id
  route_table_id = aws_route_table.private_routetable.id
}

# associate route table with public subnet
resource "aws_route_table_association" "public" {
  subnet_id      = data.aws_subnet.fetch_public.id
  route_table_id = aws_route_table.public_routetable.id
}
