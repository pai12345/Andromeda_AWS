# fetch security group
data "aws_security_group" "fetch_securitygroup" {
  name = "test1_lb"
}

# create application load balancer
resource "aws_lb" "create_alb" {
  name                             = "testalb"
  internal                         = false
  load_balancer_type               = "application"
  security_groups                  = [data.aws_security_group.fetch_securitygroup.id]
  subnets                          = slice(var.subnet_ids, 0, 2)
  idle_timeout                     = 60
  enable_deletion_protection       = false
  enable_cross_zone_load_balancing = false
  enable_http2                     = false
  enable_waf_fail_open             = false
  ip_address_type                  = "ipv4"
  tags = {
    type    = "loadbalancer"
    project = "Andromeda"
  }
}

/* # attach target group to loadbalancer
resource "aws_lb_target_group_attachment" "attach_targetgroup" {
  target_group_arn = var.target_group_arn
  target_id        = aws_lb.create_alb.arn
} */

# create alb listener
resource "aws_lb_listener" "add_listener" {
  load_balancer_arn = aws_lb.create_alb.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = var.target_group_arn
  }
  tags = {
    type    = "alb_listener"
    project = "Andromeda"
  }
}

# add listener rule
resource "aws_lb_listener_rule" "add_rule" {
  listener_arn = aws_lb_listener.add_listener.arn
  priority     = 1
  action {
    type             = "forward"
    target_group_arn = var.target_group_arn
    forward {
      target_group {
        arn = var.target_group_arn
      }
    }
  }
  condition {
    path_pattern {
      values = ["/"]
    }
  }
  tags = {
    type    = "alb_listener_rule"
    project = "Andromeda"
  }
}