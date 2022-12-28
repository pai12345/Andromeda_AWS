resource "aws_acm_certificate" "create_cert" {
  domain_name       = "*.andromedatest.click"
  validation_method = "DNS"
  key_algorithm     = "RSA_2048"
  tags = {
    type    = "tls_certificate"
    project = "andromeda"
  }
  lifecycle {
    create_before_destroy = true
  }
}