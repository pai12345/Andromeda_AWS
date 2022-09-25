#===================Output for creating alias=====================#
output "output_create_alias" {
  description = "Output for creating alias"
  sensitive   = false
  value       = aws_kms_alias.create_alias
}