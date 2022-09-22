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

#===================Output for creating ALB Listener Rule=====================#
output "output_add_listener_rule" {
  description = "Output for creating ALB Listener Rule"
  sensitive   = false
  value       = aws_lb_listener_rule.add_rule
}

/* #===================Output for attaching target group ALB=====================#
output "output_attach_targetgroup" {
  description = "Output for attaching a target group to an ALB"
  sensitive   = false
  value       = aws_lb_target_group_attachment.attach_targetgroup
} */