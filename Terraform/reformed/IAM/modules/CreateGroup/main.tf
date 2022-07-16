# create iam group
resource "aws_iam_group" "create_group" {
  name = var.aws_iam_group_name
  path = var.aws_iam_group_path
}