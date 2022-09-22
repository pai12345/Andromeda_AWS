# create target group for alb
resource "aws_lb_target_group" "create_targetgroup" {
  name                          = "testtargetgroup"
  target_type                   = "instance"
  port                          = 80
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  vpc_id                        = var.vpc_id
  deregistration_delay          = 300
  load_balancing_algorithm_type = "round_robin"
  slow_start                    = 0
  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 100
    matcher             = "200,202"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 30
    unhealthy_threshold = 3
  }
  tags = {
    type    = "targetgroup"
    project = "Andromeda"
  }
}
