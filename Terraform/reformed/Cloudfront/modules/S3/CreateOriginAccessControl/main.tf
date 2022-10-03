resource "aws_cloudfront_origin_access_control" "create_originaccess" {
  name                              = "s3_originaccess"
  description                       = "Policy for S3 Website Access"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}