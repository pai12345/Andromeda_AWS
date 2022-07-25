# module to create IAM Policy
module "generate_iam_policy" {
  source = "./modules/CreatePolicy/"
  policy = file("${path.module}/policy_document/permissions_boundary.json")
}

# module to create IAM User
module "generate_iam_user" {
  source               = "./modules/CreateUser"
  permissions_boundary = module.generate_iam_policy.output_create_policy.arn
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

# module to attach policy to group
module "generate_attach_group_policy" {
  source     = "./modules/AttachPolicy/"
  group_name = module.generate_iam_group.output_aws_iam_group.name
  policy     = file("${path.module}/policy_document/billingaccess.json")
}