# Create IAM Role
resource "aws_iam_role" "alb_ingress_role" {
  name = "alb_ingress_role"
  assume_role_policy = file("${path.module}/trust_document/trust.json")
  tags = {
    Name = "ALB Ingress Role"
  }
}

# Create IAM Role Policy
resource "aws_iam_role_policy" "alb_role_policy" {
  name = var.aws_iam_role_policy["name"]
  role = aws_iam_role.alb_ingress_role.id
  policy = file("${path.module}/policy/policy.json")
}

# Create IAM instance profile
resource "aws_iam_instance_profile" "alb_instanceprofile" {
  name  = var.aws_iam_instance_profile["name"]
  role = aws_iam_role.alb_ingress_role.name
  tags = var.aws_iam_instance_profile["tags"]
}