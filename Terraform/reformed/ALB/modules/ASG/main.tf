# fetch launch template
data "aws_launch_template" "fetch_template" {
  /* name = var.launch_template_name */
  id = "lt-0f0628394cbdd59c3"
}

# create autoscaling group
resource "aws_autoscaling_group" "create_asg" {
  name              = "create_asg"
  max_size          = 2
  min_size          = 1
  desired_capacity  = 2
  target_group_arns = var.target_group_arns
  launch_template {
    id      = data.aws_launch_template.fetch_template.id
    version = data.aws_launch_template.fetch_template.latest_version
  }
  health_check_grace_period = 120
  health_check_type         = "ELB"
  force_delete              = false
  termination_policies      = ["Default"]
  tag {
    key                 = "type"
    value               = "ASG"
    propagate_at_launch = true
  }
  tag {
    key                 = "project"
    value               = "Andromeda"
    propagate_at_launch = true
  }
  protect_from_scale_in = false
  vpc_zone_identifier   = slice(var.subnet_ids, 0, 2)
  /* vpc_zone_identifier   = slice(data.aws_subnets.fetch_subnets.ids, 0, 2) */
  instance_refresh {
    strategy = "Rolling"
  }
}