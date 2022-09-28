resource "aws_s3_bucket_website_configuration" "configure_website" {
  bucket = var.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "index.html"
  }
}