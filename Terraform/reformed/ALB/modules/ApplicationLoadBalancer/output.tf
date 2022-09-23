#===================Output for fetching ALB Security group=====================#
output "output_fetch_securitygroup" {
  description = "Output for fetching ALB Security group"
  sensitive   = false
  value       = data.aws_security_group.fetch_securitygroup
}

#===================Output for creating ALB=====================#
output "output_create_alb" {
  description = "Output for creating ALB"
  sensitive   = false
  value       = aws_lb.create_alb
}

#===================Output for creating ALB Listener=====================#
output "output_add_listener" {
  description = "Output for creating ALB Listener"
  sensitive   = false
  value       = aws_lb_listener.add_listener
}

#===================Output for creating ALB Listener rule for application=====================#
output "output_add_listener_rule" {
  description = "Output for creating ALB Listener rule for application"
  sensitive   = false
  value       = aws_lb_listener_rule.add_rule
}

#===================Output for creating ALB Listener rule for fallback=====================#
output "output_fallback_response" {
  description = "Output for creating ALB Listener rule for fallback"
  sensitive   = false
  value       = aws_lb_listener_rule.fallback_response
}