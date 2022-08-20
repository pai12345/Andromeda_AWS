resource "aws_route53_record" "add_record" {
  zone_id = var.hosted_zone_id
  name    = var.dns_name
  type    = var.record_type
  alias {
    name                   = var.website_name
    zone_id                = var.bucket_zone_id
    evaluate_target_health = false
  }
}
