data "aws_s3_bucket" "fetch_bucket" {
  bucket = "mytestbucketpai1.andromedatest.click"
}

resource "aws_cloudfront_distribution" "create_distribution" {
  is_ipv6_enabled     = true
  enabled             = true
  comment             = "S3 CDN"
  default_root_object = "index.html"
  price_class         = "PriceClass_100"
  default_cache_behavior {
    allowed_methods        = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods         = ["HEAD", "GET"]
    target_origin_id       = "s3-test-bucket"
    viewer_protocol_policy = "https-only"
    compress               = true
    forwarded_values {
      cookies {
        forward = "none"
      }
      query_string = false
    }
  }
  origin {
    connection_attempts      = 3
    connection_timeout       = 10
    domain_name              = data.aws_s3_bucket.fetch_bucket.bucket_regional_domain_name
    origin_id                = "s3_origin_id"
    origin_access_control_id = var.origin_access_control_id
  }
  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations        = ["US", "DE"]
    }
  }
  viewer_certificate {
    cloudfront_default_certificate = true
  }
}