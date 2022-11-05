#===================Output Module generating EC2 Role & Instance Profile=====================#
output "output_generate_ec2_role" {
  value       = module.generate_ec2_role
  sensitive   = false
  description = "Output for Module - generating EC2 Role & Instance Profile"
}

#===================Output Module generating EC2 instance=====================#
output "output_generate_ec2" {
  value       = module.generate_ec2
  sensitive   = false
  description = "Output for Module - generating EC2 instance"
}
