# module to create IAM User
module "generate_iam_user" {
  source = "./modules/CreateUser"
}

# module to create IAM Group
module "generate_iam_group" {
  source = "./modules/CreateGroup/"
}

# module to add IAM User to group
module "generate_add_user_group" {
  source             = "./modules/GroupMembership/"
  aws_iam_user_name  = module.generate_iam_user.output_iam_user.name
  aws_iam_group_name = module.generate_iam_group.output_aws_iam_group.name
}

# module to add IAM User to group
module "generate_attach_group_policy" {
  source     = "./modules/AttachPolicy/"
  group_name = module.generate_iam_group.output_aws_iam_group.name
}