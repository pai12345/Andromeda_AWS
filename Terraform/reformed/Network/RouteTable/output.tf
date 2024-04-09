#===================Output Module - generating Route Table=====================#
output "output_generate_routetable" {
  value       = module.generate_routetable
  sensitive   = false
  description = "Output for Module - generating Route Table"
}
