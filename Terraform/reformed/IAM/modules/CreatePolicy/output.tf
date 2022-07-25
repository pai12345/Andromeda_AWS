#===================Output IAM Create Policy=====================#
output "output_create_policy" {
  description = "Output for IAM Create Policy"
  value       = aws_iam_policy.create_policy
}