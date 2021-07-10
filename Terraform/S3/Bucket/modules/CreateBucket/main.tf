resource "aws_s3_bucket" "andr_terraform_backend" {
  bucket = "andr_terraform_backend"
  acl    = "private"
  force_destroy = "true"
  versioning {
    enabled = true
  }
  tags = {
    Type        = "S3 Bucket"
    Environment = "Andromeda"
  }
}