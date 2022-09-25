#===================Output for creating new KMS key=====================#
output "output_create_customkey" {
  description = "Output for creating new KMS key"
  sensitive   = false
  value       = aws_kms_key.create_customkey
}