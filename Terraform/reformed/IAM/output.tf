#===================Module Output for generating IAM Policy=====================#
output "output_generate_iam_policy" {
  value       = module.generate_iam_policy
  sensitive   = false
  description = "Output for Module Create IAM Policy"
}

#===================Module Output for generating IAM User=====================#
output "output_generate_iam_user" {
  value       = module.generate_iam_user
  sensitive   = false
  description = "Output for Module IAM Create User"
}

#===================Module Output for generating IAM Group=====================#
output "output_generate_iam_group" {
  value       = module.generate_iam_group
  sensitive   = false
  description = "Output for Module IAM Create Group"
}

#===================Module Output for adding Users to Group=====================#
output "output_generate_add_user_group" {
  value       = module.generate_add_user_group
  sensitive   = false
  description = "Output for Module Add Users to Group"
}

#===================Module Output for attaching IAM Policy to Group=====================#
output "output_generate_attach_group_policy" {
  value       = module.generate_attach_group_policy
  sensitive   = false
  description = "Output for attaching IAM Policy to Group"
}