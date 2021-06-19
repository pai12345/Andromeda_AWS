output "eks_cluster_endpoint" {
  value = aws_eks_cluster.aws_eks.endpoint
}

output "eks_cluster_certificate_authority" {
  value = aws_eks_cluster.aws_eks.certificate_authority 
}

output "eks_region" {
  description = "AWS region"
  value       = "us-east-1"
}

output "eks_cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = aws_eks_cluster.aws_eks.name
}