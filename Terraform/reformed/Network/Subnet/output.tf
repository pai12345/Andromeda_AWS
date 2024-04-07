#===================Output Module - generating subnets=====================#
output "output_generate_subnets" {
  value       = module.generate_subnets
  sensitive   = false
  description = "Output for Module - generating subnets"
}
