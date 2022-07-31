# module to configure eks roles and policies
module "generate_configure_role_policy" {
  source                  = "./modules/CreateRole/"
  assume_role_policy      = file("${path.module}/policy/eks_cluster_role.json")
  assume_node_role_policy = file("${path.module}/policy/eks_nodes_roles.json")
}

# module to creating Cluster
module "generate_create_cluster" {
  source   = "./modules/CreateCluster/"
  role_arn = module.generate_configure_role_policy.output_eks_cluster.arn
}

# module to creating nodegroup
module "generate_create_nodegroup" {
  source        = "./modules/CreateNodegroup/"
  cluster_name  = module.generate_create_cluster.output_create_cluster.name
  node_role_arn = module.generate_configure_role_policy.output_eks_nodes.arn
}