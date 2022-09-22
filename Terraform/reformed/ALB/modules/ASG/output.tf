#===================Output for fetching launch template=====================#
output "output_fetch_template" {
  description = "Output for fetching launch template"
  sensitive   = false
  value       = data.aws_launch_template.fetch_template
}

/* value       = slice(data.aws_subnets.fetch_subnets.ids, 0, 2) */