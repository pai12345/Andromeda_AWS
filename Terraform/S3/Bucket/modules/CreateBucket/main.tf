resource "aws_s3_bucket" "andrterraformbackend" {
  bucket = "andrterraformbackend"
  acl    = "private"
  force_destroy = "true"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
  }
  logging {
    # target_bucket = aws_s3_bucket.andrlogbucket.id
    target_bucket = var.target_bucket
    target_prefix = "log/"
  }
  tags = {
    Type        = "S3 Bucket"
    Environment = "Andromeda"
  }
}