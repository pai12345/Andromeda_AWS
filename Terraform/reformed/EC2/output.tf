#===================Output Module generate_ec2=====================#
output "output_generate_ec2" {
  value       = module.generate_ec2
  sensitive   = false
  description = "Output for Module EC2"
}
