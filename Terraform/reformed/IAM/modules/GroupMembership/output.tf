#===================Output IAM Group Membership=====================#
output "output_aws_iam_group_membership" {
  description = "Output for IAM Group Membership"
  value       = aws_iam_group_membership.add_users
}