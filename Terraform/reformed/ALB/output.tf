/* #===================Output for module - generating ec2 Launch Template=====================#
output "output_generate_ec2_launch_template" {
  description = "Output for generating ec2 Launch Template"
  sensitive   = false
  value       = module.generate_ec2_launch_template
} */

#===================Output for module - fetch VPC & Subnets=====================#
output "output_generate_fetch_network" {
  description = "Output for fetching VPC and Subnets"
  sensitive   = false
  value       = module.generate_fetch_network
}

#===================Output for module - creating Target groups=====================#
output "output_generate_create_targetgroup" {
  description = "Output for creating Target Groups"
  sensitive   = false
  value       = module.generate_create_targetgroup
}


#===================Output for module - generating ec2 Auto Scaling Group=====================#
output "output_generate_ec2_asg" {
  description = "Output for generating ec2 Auto Scaling Group"
  sensitive   = false
  value       = module.generate_ec2_asg
}

#===================Output for module - creating ALB=====================#
output "output_generate_alb" {
  description = "Output for module - creating ALB"
  sensitive   = false
  value       = module.generate_alb
}