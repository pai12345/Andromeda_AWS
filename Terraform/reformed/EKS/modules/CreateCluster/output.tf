#===================Output Creating EKS Cluster=====================#
output "output_create_cluster" {
  description = "Output for Creating EKS Cluster"
  value       = aws_eks_cluster.create_cluster
}