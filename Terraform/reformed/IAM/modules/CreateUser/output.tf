#===================Output IAM User=====================#
output "output_iam_user" {
  description = "Output for IAM Create User"
  value       = aws_iam_user.create_user
}