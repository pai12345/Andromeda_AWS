#===================Output for creating certificate=====================#
output "output_create_cert" {
  description = "Output for creating certificate"
  sensitive   = false
  value       = aws_acm_certificate.create_cert
}