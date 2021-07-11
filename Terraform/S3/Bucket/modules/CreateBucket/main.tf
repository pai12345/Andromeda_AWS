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

resource "aws_s3_bucket" "andrterraformbackend" {
  bucket = "andrterraformbackend"
  acl    = "private"
  force_destroy = "true"
  versioning {
    enabled = true
  }
  logging {
    target_bucket = aws_s3_bucket.andrlogbucket.id
    target_prefix = "log/"
  }
  tags = {
    Type        = "S3 Bucket"
    Environment = "Andromeda"
  }
}