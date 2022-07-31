# module to configure eks roles and policies
module "generate_configure_role_policy" {
  source             = "./modules/CreateRole/"
  assume_role_policy = file("${path.module}/policy/eks_role.json")
}

# module to creating Cluster
module "generate_create_cluster" {
  source   = "./modules/CreateCluster/"
  role_arn = module.generate_configure_role_policy.output_fetch_eks_role.arn
}

# module to creating nodegroup
module "generate_create_nodegroup" {
  source        = "./modules/CreateNodegroup/"
  cluster_name  = module.generate_create_cluster.output_create_cluster.name
  node_role_arn = module.generate_configure_role_policy.output_fetch_eks_role.arn
}