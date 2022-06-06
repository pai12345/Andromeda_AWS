# fetch aws ami
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# create vpc
resource "aws_vpc" "vpc_create" {
  cidr_block       = "172.16.0.0/16"
  instance_tenancy = "default"
  tags = {
    type = "vpc"
    name = "andromeda"
  }
}

# create subnet
resource "aws_subnet" "subnet_create" {
  vpc_id            = aws_vpc.vpc_create.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"
  tags = {
    type = "subnet"
    name = "andromeda"
  }
}

# create ec2
resource "aws_instance" "ec2_create" {
  ami               = data.aws_ami.ubuntu.id
  instance_type     = "t2.micro"
  associate_public_ip_address = true
  subnet_id         = aws_subnet.subnet_create.id
  availability_zone = "us-east-1a"
  credit_specification {
    cpu_credits = "standard"
  }
}
