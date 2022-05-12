# create bucket 
resource "aws_s3_bucket" "create_bucket" {
  bucket        = var.bucketname
  tags          = var.buckettags
  force_destroy = true
}

# enable versioning
resource "aws_s3_bucket_versioning" "version_bucket" {
  bucket = aws_s3_bucket.create_bucket.id
  versioning_configuration {
    status = var.bucket_versioning
  }
}

# enable server-side encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "encrypt_bucket" {
  bucket = aws_s3_bucket.create_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = var.sse_algorithm
    }
  }
}