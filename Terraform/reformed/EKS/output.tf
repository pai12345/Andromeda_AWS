#===================Module Output for Configuring EKS roles and policies=====================#
output "output_generate_configure_role_policy" {
  value       = module.generate_configure_role_policy
  sensitive   = false
  description = "Output for Module - Configuring EKS roles and policies"
}


#===================Module Output for Create Cluster=====================#
output "output_generate_create_cluster" {
  value       = module.generate_create_cluster
  sensitive   = false
  description = "Output for Module - Creating Cluster"
}

#===================Module Output for Create Nodegroup=====================#
output "output_generate_create_nodegroup" {
  value       = module.generate_create_nodegroup
  sensitive   = false
  description = "Output for Module - Creating Nodegroup"
}