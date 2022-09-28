resource "aws_cloudfront_distribution" "create_distribution" {
    default_cache_behavior {}
    enabled = true
    origin {}
    restrictions {}
    viewer_certificate {}
}