# generate EC2 Role & Instance Profile
module "generate_ec2_role" {
  source = "./modules/IAMRole/"
}

# generate EC2 instance
module "generate_ec2" {
  source = "./modules/CreateEC2"
  iam_instance_profile = module.generate_ec2_role.output_ec2_accessprofile.name
}