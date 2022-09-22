# fetch iam instance profile
data "aws_iam_instance_profile" "ec2_instance_profile" {
  name = var.instance_profile_name
}

# Fetch ubuntu 20.04 ami
data "aws_ami" "ubuntu" {
  most_recent = var.aws_ami_ubuntu["most_recent"]
  filter {
    name   = var.aws_ami_ubuntu["os_type"]["name"]
    values = var.aws_ami_ubuntu["os_type"]["values"]
  }
  filter {
    name   = var.aws_ami_ubuntu["virtualization"]["name"]
    values = var.aws_ami_ubuntu["virtualization"]["values"]
  }
  owners = var.aws_ami_ubuntu["owners"]
}

# fetch vpc
data "aws_vpc" "fetch_vpc" {
  default = true
}

# create security group
resource "aws_security_group" "create_security_group" {
  name        = var.security_group_variables["name"]
  description = var.security_group_variables["description"]
  vpc_id      = data.aws_vpc.fetch_vpc.id
  tags = var.security_group_variables["tags"]
}


resource "aws_security_group_rule" "egress_rule" {
  description       = "ASG Egress rule"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.create_security_group.id
}

resource "aws_security_group_rule" "ingress_rule_http" {
  description       = "ASG Ingress rule http"
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.create_security_group.id
}

resource "aws_security_group_rule" "ingress_rule_https" {
  description       = "ASG Ingress rule https"
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.create_security_group.id
}

resource "aws_security_group_rule" "ssh_rule" {
  description       = "ASG SSH rule"
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.create_security_group.id
}

# create ec2 launch template
resource "aws_launch_template" "andromeda_ec2_template" {
  name                 = var.launch_template_name
  description          = "Launch Template for ec2"
  vpc_security_group_ids = [aws_security_group.create_security_group.id]
  /* vpc_security_group_ids = ["sg-0570ef3c824ddbc77"] */
  user_data            = base64encode(file("${path.module}/../../../../../userdata/webserver.sh"))
  default_version      = 1
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      volume_size           = 8
      volume_type           = "gp2"
      delete_on_termination = "true"
    }
  }
  capacity_reservation_specification {
    capacity_reservation_preference = "none"
  }
  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false
  iam_instance_profile {
    arn = data.aws_iam_instance_profile.ec2_instance_profile.arn
  }
  image_id                             = data.aws_ami.ubuntu.id
  instance_initiated_shutdown_behavior = "terminate"
  instance_market_options {
    market_type = "spot"
    spot_options {
      instance_interruption_behavior = "terminate"
      spot_instance_type             = "one-time"
    }
  }
  instance_type = "t2.micro"
  metadata_options {
    http_endpoint = "disabled"
  }
  monitoring {
    enabled = false
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      type    = "spot",
      project = "Andromeda"
    }
  }
}
