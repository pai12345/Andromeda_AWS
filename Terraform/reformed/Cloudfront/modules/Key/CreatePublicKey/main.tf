resource "aws_cloudfront_public_key" "create_key" {
  comment     = "Test public key"
  encoded_key = file("${path.module}/../keys/public_key.pem")
  name        = "test_key"
}