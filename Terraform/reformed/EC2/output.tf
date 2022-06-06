#===================Output Module generate_vpc=====================#
output "output_generate_vpc" {
  value       = module.generate_ec2
  sensitive   = false
  description = "Output for Module EC2"
}
