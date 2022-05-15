# module to generate ECR repository
module "generate_create_repo" {
  source = "./modules/CreateECR"
}

# module to add ECR lifecycle policy
module "generate_lifecycle_policy" {
  source = "./modules/LifeCyclePolicy"
  repositoryname = module.generate_create_repo.output_create_repo.id
}