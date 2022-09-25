#===================Output for module - creating new KMS key=====================#
output "output_generate_new_kmskey" {
  description = "Output for module - creating new KMS key"
  sensitive   = false
  value       = module.generate_new_kmskey
}

#===================Output for module - creating key alias=====================#
output "output_generate_new_keyalias" {
  description = "Output for module - creating key alias"
  sensitive   = false
  value       = module.generate_new_keyalias
}
