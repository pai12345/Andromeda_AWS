
#===================Output for creating Target group=====================#
output "output_create_targetgroup" {
  description = "Output for creating Target Group"
  sensitive   = false
  value       = aws_lb_target_group.create_targetgroup
}