# fetch hosted zone
data "aws_route53_zone" "fetch_zone" {
  name         = var.zonename
  private_zone = false
}