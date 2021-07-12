resource "aws_s3_bucket" "andrlogbucket" {
  bucket = "andrlogbucket"
  acl    = "log-delivery-write"
  force_destroy = "true"
  versioning {
    enabled = true
  }
  tags = {
    Type        = "S3 Bucket"
    Environment = "Andromeda"
  }
}