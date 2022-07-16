#===================Output IAM Group=====================#
output "output_aws_iam_group" {
  description = "Output for IAM Group"
  value       = aws_iam_group.create_group
}