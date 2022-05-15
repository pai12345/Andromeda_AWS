#===================Output ECR Repo=====================#
output output_add_lifecyclepolicy {
  description = "ECR Add Lifecycle Policy"
  value       = aws_ecr_lifecycle_policy.add_lifecyclepolicy
}