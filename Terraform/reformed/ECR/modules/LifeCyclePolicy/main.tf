# create ECR lifecycle policy
resource "aws_ecr_lifecycle_policy" "add_lifecyclepolicy" {
  repository = var.repositoryname

  policy = jsonencode({
    "rules": [
        {
            "rulePriority": 1,
            "description": "Expire images older than 1 days",
            "selection": {
                "tagStatus": "untagged",
                "countType": "sinceImagePushed",
                "countUnit": "days",
                "countNumber": 1
            },
            "action": {
                "type": "expire"
            }
        }
    ]
  })
}