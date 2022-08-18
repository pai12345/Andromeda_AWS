#===================Output ECR Repo Policy=====================#
output "output_aws_ecr_repository_policy" {
  description = "ECR Repository Add Policy"
  value       = aws_ecr_repository_policy.add_policy
}