resource "aws_ecr_repository" "andromeda_repo" {
  name                 = var.andromeda_repo["name"]
  image_tag_mutability = var.andromeda_repo["image_tag_mutability"]

  image_scanning_configuration {
    scan_on_push = var.andromeda_repo["scan_on_push"]
  }
  tags = var.andromeda_repo["tags"]
}