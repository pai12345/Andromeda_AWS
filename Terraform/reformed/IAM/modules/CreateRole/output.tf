#===================Output IAM Create Role=====================#
output "output_create_role" {
  description = "Output for IAM Create Role"
  value       = aws_iam_role.create_role
}