#===================Output IAM Policy to Group=====================#
output "output_attach_policy_group" {
  description = "Output for Attach IAM policy to group"
  value       = aws_iam_group_policy.attach_policy_group
}