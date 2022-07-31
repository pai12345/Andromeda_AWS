resource "aws_eks_cluster" "create_cluster" {
  name     = "andromeda_eks_cluster"
  role_arn = var.role_arn
  version  = "1.22"
  vpc_config {
    endpoint_public_access  = true
    endpoint_private_access = false
    public_access_cidrs     = ["0.0.0.0/0"]
    subnet_ids              = ["subnet-f4f350b9", "subnet-434c501f"]
  }
  tags = {
    type = "andromeda_eks_cluster"
  }
}