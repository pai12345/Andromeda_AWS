# generate ec2 launch template
/* module "generate_ec2_launch_template" {
  source               = "./modules/LaunchTemplates/"
  launch_template_name = var.launch_template_name
} */

# fetch vpc & subnets
module "generate_fetch_network" {
  source = "./modules/VPC/"
}

# generate ALB Target Group
module "generate_create_targetgroup" {
  source = "./modules/TargetGroup/"
  vpc_id = module.generate_fetch_network.output_fetch_vpc.id
}

# generate EC2 Auto Scaling group
module "generate_ec2_asg" {
  source               = "./modules/ASG/"
  launch_template_name = var.launch_template_name
  subnet_ids           = module.generate_fetch_network.output_fetch_subnets.ids
  target_group_arns    = [module.generate_create_targetgroup.output_create_targetgroup.arn]
}

# generate Application LoadBalancer
module "generate_alb" {
  source           = "./modules/ApplicationLoadBalancer/"
  subnet_ids       = module.generate_fetch_network.output_fetch_subnets.ids
  vpc_id           = module.generate_fetch_network.output_fetch_vpc.id
  target_group_arn = module.generate_create_targetgroup.output_create_targetgroup.arn
  depends_on = [
    module.generate_ec2_asg
  ]
}
