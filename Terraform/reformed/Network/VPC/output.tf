#===================Output Module - generating vpc=====================#
output "output_generate_vpc" {
  value       = module.generate_vpc
  sensitive   = false
  description = "Output for Module - generating vpc"
}
