# Create IAM user
resource "aws_iam_user" "create_user" {
  name          = var.iam_user_name
  path          = var.iam_user_path
  force_destroy = true
  tags          = var.iam_user_tags
}