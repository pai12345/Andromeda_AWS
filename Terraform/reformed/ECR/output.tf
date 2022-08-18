#===================Module Output for generating ECR repo=====================#
output "output_generate_create_repo" {
  value       = module.generate_create_repo
  sensitive   = false
  description = "Output for Module ECR Create Repository"
}

#===================Module Output for generating ECR repo=====================#
output "output_generate_lifecycle_policy" {
  value       = module.generate_lifecycle_policy
  sensitive   = false
  description = "Output for Module to add Lifecycle Policy to ECR repo"
}

#===================Module Output for adding ECR repository policy=====================#
output "output_generate_repository_policy" {
  value       = module.generate_repository_policy
  sensitive   = false
  description = "Output for Module adding ECR repository policy"
}