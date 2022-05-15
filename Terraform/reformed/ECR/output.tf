#===================Module Output for generating ECR repo=====================#
output output_generate_create_repo {
  value       = module.generate_create_repo
  sensitive   = false
  description = "Output for Module ECR Create Repository"
}