# Attach IAM policy to group
resource "aws_iam_group_policy" "attach_policy_group" {
  name   = var.group_policy_name
  group  = var.group_name
  policy = var.policy
}