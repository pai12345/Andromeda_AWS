# create bucket 
resource "aws_s3_bucket" "create_bucket" {
  bucket        = var.bucketname
  tags          = var.buckettags
  force_destroy = true
}

# add bucket policy
resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.create_bucket.id
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "PublicReadGetObject",
        "Effect" : "Allow",
        "Principal" : "*",
        "Action" : [
          "s3:GetObject"
        ],
        "Resource" : [
          "${aws_s3_bucket.create_bucket.arn}/*"
        ]
      }
    ]
  })
}

# configure StaticWebsite file
resource "aws_s3_bucket_website_configuration" "staticwebsite" {
  bucket = aws_s3_bucket.create_bucket.bucket
  index_document {
    suffix = var.staticfile
  }
  error_document {
    key = var.staticfile
  }
}