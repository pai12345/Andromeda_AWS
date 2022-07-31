#===================Output Creating EKS NodeGroup=====================#
output "output_create_nodegroup" {
  description = "Output for Creating EKS NodeGroup"
  value       = aws_eks_node_group.create_nodegroup
}