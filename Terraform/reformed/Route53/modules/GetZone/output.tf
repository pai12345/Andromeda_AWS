#===================Output Route53 Hosted Zone=====================#
output "output_fetch_zone" {
  description = "Output for Route53 Hosted zone"
  value       = data.aws_route53_zone.fetch_zone
}