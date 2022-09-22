/* #===================Output for module - generating ec2 Launch Template=====================#
output "output_generate_ec2_launch_template" {
  description = "Output for generating ec2 Launch Template"
  sensitive   = false
  value       = module.generate_ec2_launch_template
} */

#===================Output for module - generating ec2 Auto Scaling Group=====================#
output "output_generate_ec2_asg" {
  description = "Output for generating ec2 Auto Scaling Group"
  sensitive   = false
  value       = module.generate_ec2_asg
}