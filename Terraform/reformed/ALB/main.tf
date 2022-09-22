# generate ec2 launch template
/* module "generate_ec2_launch_template" {
  source               = "./modules/LaunchTemplates/"
  launch_template_name = var.launch_template_name
} */

# generate EC2 Auto Scaling group
module "generate_ec2_asg" {
  source               = "./modules/ASG/"
  launch_template_name = var.launch_template_name
  /* depends_on = [
    module.generate_ec2_launch_template
  ] */
}