data "aws_key_pair" "get_key" {
  key_name           = "andr"
  include_public_key = true
}

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

# create security group
resource "aws_security_group" "secgrp_create" {
  name        = "testgroup"
  description = "set traffic rules"
  vpc_id      = var.vpc_id
  ingress {
    description = "Inbound Traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Outbound Traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    type = "security_group"
    name = "andromeda"
  }
}

# create iam role
resource "aws_iam_role" "ec2_accessrole" {
  name               = "ec2_accessrole"
  description        = "EC2 Access Role"
  assume_role_policy = file("${path.module}/policy/trust_ec2acces.json")
  tags = {
    type    = "role"
    project = "andromeda"
  }
}

# create ec2 role policy
resource "aws_iam_role_policy" "ec2_accessrole_policy" {
  name   = "ec2_accessrole_policy"
  role   = aws_iam_role.ec2_accessrole.id
  policy = file("${path.module}/policy/ec2_fullaccess.json")
}

# create ec2 instance profile
resource "aws_iam_instance_profile" "ec2_accessprofile" {
  name = "ec2_accessprofile"
  role = aws_iam_role.ec2_accessrole.name
  tags = {
    type    = "instance_profile"
    project = "andromeda"
  }
}

# create ec2
resource "aws_instance" "ec2_create" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.secgrp_create.id]
  user_data                   = file("${path.module}/user_data/webserver.sh")
  credit_specification {
    cpu_credits = "standard"
  }
  iam_instance_profile = aws_iam_instance_profile.ec2_accessprofile.name
  key_name             = "andr"
  tags = {
    type    = "ec2"
    project = "andromeda"
  }
}
