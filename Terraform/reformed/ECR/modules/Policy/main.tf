resource "aws_ecr_repository_policy" "add_policy" {
  repository = var.repository
  policy     = var.policy
}