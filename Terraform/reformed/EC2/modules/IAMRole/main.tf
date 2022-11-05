# create iam role
resource "aws_iam_role" "ec2_accessrole" {
  name               = "ec2_accessrole"
  description        = "Ansible EC2 Access Role"
  assume_role_policy = file("${path.module}/policy/trust_ec2acces.json")
  tags = {
    project = "andromeda"
    type    = "role"
    entity  = "ansible"
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
    project = "andromeda"
    type    = "instance_profile"
    entity  = "ansible"
  }
}