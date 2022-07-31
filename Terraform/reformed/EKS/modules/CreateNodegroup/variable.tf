variable "cluster_name" {
  type        = string
  description = "EKS Cluster name"
}

variable "node_role_arn" {
  type        = string
  description = "NodeGroup Role Policy arn"
}