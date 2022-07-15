#===================Module Output for generating bucket=====================#
output "output_generate_iam_user" {
  value       = module.generate_iam_user
  sensitive   = false
  description = "Output for Module IAM Create User"
}