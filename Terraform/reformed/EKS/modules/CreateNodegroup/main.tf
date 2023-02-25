resource "aws_eks_node_group" "create_nodegroup" {
  cluster_name         = var.cluster_name
  node_group_name      = "andromeda_eks_nodegroup1"
  node_role_arn        = var.node_role_arn
  subnet_ids           = ["subnet-f4f350b9", "subnet-434c501f"]
  capacity_type        = "SPOT"
  disk_size            = "20"
  version              = "1.22"
  force_update_version = true
  instance_types       = ["t2.medium"]
  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }
  update_config {
    max_unavailable_percentage = 20
  }
  remote_access {
    ec2_ssh_key = "andr"
  } 
  tags = {
    type = "andromeda_eks_nodegroup1"
  }
}
