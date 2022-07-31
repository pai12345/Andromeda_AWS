
//Cluster
data "aws_iam_policy" "fetch_AmazonEKSClusterPolicy" {
  name = "AmazonEKSClusterPolicy"
}

data "aws_iam_policy" "fetch_AmazonEKSServicePolicy" {
  name = "AmazonEKSServicePolicy"
}

resource "aws_iam_role" "eks_cluster" {
  name               = "eks-cluster"
  assume_role_policy = var.assume_role_policy
}

resource "aws_iam_role_policy_attachment" "AmazonEKSClusterPolicy" {
  policy_arn = data.aws_iam_policy.fetch_AmazonEKSClusterPolicy.arn
  role       = aws_iam_role.eks_cluster.name
}

// NodeGroup

data "aws_iam_policy" "AmazonEKSWorkerNodePolicy" {
  name = "AmazonEKSWorkerNodePolicy"
}

data "aws_iam_policy" "AmazonEKS_CNI_Policy" {
  name = "AmazonEKS_CNI_Policy"
}

data "aws_iam_policy" "AmazonEC2ContainerRegistryReadOnly" {
  name = "AmazonEC2ContainerRegistryReadOnly"
}

resource "aws_iam_role" "eks_nodes" {
  name               = "eks-node-group"
  assume_role_policy = var.assume_node_role_policy
}
resource "aws_iam_role_policy_attachment" "AmazonEKSWorkerNodePolicy" {
  policy_arn = data.aws_iam_policy.AmazonEKSWorkerNodePolicy.arn
  role       = aws_iam_role.eks_nodes.name
}

resource "aws_iam_role_policy_attachment" "AmazonEKS_CNI_Policy" {
  policy_arn = data.aws_iam_policy.AmazonEKS_CNI_Policy.arn
  role       = aws_iam_role.eks_nodes.name
}


resource "aws_iam_role_policy_attachment" "AmazonEKSServicePolicy" {
  policy_arn = data.aws_iam_policy.fetch_AmazonEKSServicePolicy.arn
  role       = aws_iam_role.eks_nodes.name
}

resource "aws_iam_role_policy_attachment" "AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = data.aws_iam_policy.AmazonEC2ContainerRegistryReadOnly.arn
  role       = aws_iam_role.eks_nodes.name
}

