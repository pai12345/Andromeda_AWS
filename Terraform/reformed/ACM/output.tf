#===================Output Module - generate tls certificate=====================#
output "output_generate_tls_certificate" {
  description = "Output Module - generate tls certificate"
  sensitive   = false
  value       = module.generate_tls_certificate
}