# create ECR repo
resource "aws_ecr_repository" "create_repo" {
  name                 = var.reponame
  image_tag_mutability = var.immutable
  encryption_configuration {
    encryption_type = var.encryptiontype
  }
  image_scanning_configuration {
    scan_on_push = var.scan
  }
  tags = var.tags
}