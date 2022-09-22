# variable for aws_ami_ubuntu
variable "aws_ami_ubuntu" {
  description = "Data for aws ami - ubuntu"
  type = object({
    most_recent = bool
    os_type = object({
      name   = string
      values = list(string)
    })
    virtualization = object({
      name   = string
      values = list(string)
    })
    owners = list(string)
  })
  default = {
    most_recent = true
    os_type = {
      name   = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20210223"]
    }
    virtualization = {
      name   = "virtualization-type"
      values = ["hvm"]
    }
    owners = ["099720109477"]
  }
}

variable "instance_profile_name" {
  type        = string
  description = "EC2 instance profile name"
  default     = "ec2_instanceprofile"
}

variable "security_group_variables" {
  description = "Variables for Security group"
  default = {
    name        = "ec2_template_group"
    description = "Security group for EC2"
    ingress = {
      description      = "Inbound Traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
    egress = {
      description      = "Outbound Traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
    tags = {
      type = "security group"
      name = "andromeda"
    }
  }
}

variable "launch_template_name" {
  type        = string
  description = "Launch Template name"
}