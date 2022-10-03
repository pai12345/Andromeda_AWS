resource "aws_cloudfront_cache_policy" "create_policy" {
  name        = "s3_cache_policy"
  comment     = "S3 Cache Policy"
  default_ttl = 100
  max_ttl     = 200
  min_ttl     = 1
  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }
    headers_config {
      header_behavior = "none"
    }
    query_strings_config {
      query_string_behavior = "none"
    }
  }
}