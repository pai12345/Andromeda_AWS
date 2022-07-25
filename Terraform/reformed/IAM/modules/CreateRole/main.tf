resource "aws_iam_role" "create_role" {
  name               = var.role_name
  path               = var.role_path
  description        = var.role_description
  assume_role_policy = var.policy
  tags               = var.role_tags
}