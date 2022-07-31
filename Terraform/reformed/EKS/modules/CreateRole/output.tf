
#===================Output Fetch IAM Role for EKS=====================#
output "output_fetch_eks_role" {
  description = "Output for Fetching IAM Role for EKS"
  value       = aws_iam_role.fetch_eks_role
}

#===================Output Fetch AmazonEKSClusterPolicy=====================#
output "output_fetch_AmazonEKSClusterPolicy" {
  description = "Output for Fetching IAM Policy fetch_AmazonEKSClusterPolicy"
  value       = data.aws_iam_policy.fetch_AmazonEKSClusterPolicy
}

#===================Output Fetch fetch_AmazonEKSServicePolicy=====================#
output "output_fetch_AmazonEKSServicePolicy" {
  description = "Output for Fetching IAM Policy fetch_AmazonEKSServicePolicy"
  value       = data.aws_iam_policy.fetch_AmazonEKSServicePolicy
}

#===================Output attach AmazonEKSClusterPolicy to role=====================#
output "output_role_AmazonEKSClusterPolicy" {
  description = "Output for attaching AmazonEKSClusterPolicy role"
  value       = aws_iam_role_policy_attachment.AmazonEKSClusterPolicy
}

#===================Output attach AmazonEKSServicePolicy to role=====================#
output "output_role_AmazonEKSServicePolicy" {
  description = "Output for attaching AmazonEKSServicePolicy role"
  value       = aws_iam_role_policy_attachment.AmazonEKSServicePolicy
}

#===================Output fetching EKS NodeGroup role=====================#
output "output_policy_AmazonEKSWorkerNodePolicy" {
  description = "Output for fetching AmazonEKSWorkerNodePolicy"
  value       = data.aws_iam_policy.AmazonEKSWorkerNodePolicy
}

#===================Output fetching EKS NodeGroup role=====================#
output "output_policy_AmazonEKS_CNI_Policy" {
  description = "Output for fetching AmazonEKS_CNI_Policy"
  value       = data.aws_iam_policy.AmazonEKS_CNI_Policy
}

#===================Output fetching EKS NodeGroup role=====================#
output "output_policy_AmazonEC2ContainerRegistryReadOnly" {
  description = "Output for fetching AmazonEC2ContainerRegistryReadOnly"
  value       = data.aws_iam_policy.AmazonEC2ContainerRegistryReadOnly
}

#===================Output attaching AmazonEKSWorkerNodePolicy=====================#
output "output_role_policy_AmazonEKSWorkerNodePolicy" {
  description = "Output for fetching AmazonEKSWorkerNodePolicy"
  value       = aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy
}

#===================Output attaching AmazonEKS_CNI_Policy=====================#
output "output_role_policy_AmazonEKS_CNI_Policy" {
  description = "Output for fetching AmazonEKS_CNI_Policy"
  value       = aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy
}

#===================Output attaching AmazonEC2ContainerRegistryReadOnly=====================#
output "output_role_policy_AmazonEC2ContainerRegistryReadOnly" {
  description = "Output for fetching AmazonEC2ContainerRegistryReadOnly"
  value       = aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly
}