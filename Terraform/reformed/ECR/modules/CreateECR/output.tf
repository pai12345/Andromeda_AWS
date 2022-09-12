#===================Output ECR Repo=====================#
output "output_create_repo" {
  description = "ECR Repository Creation Output"
  value       = aws_ecr_repository.create_repo
}