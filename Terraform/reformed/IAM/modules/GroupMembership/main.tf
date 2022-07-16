# Add users to group
resource "aws_iam_group_membership" "add_users" {
  name = "group_membership"
  users = [
    var.aws_iam_user_name
  ]
  group = var.aws_iam_group_name
}