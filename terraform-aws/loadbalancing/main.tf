# --- loadbalancing/main.tf ---

resource "aws_lb" "noweder-lb" {
  name            = "noweder-loadbalancer"
  subnets         = var.public_subnets
  security_groups = [var.public_sg]
  idle_timeout    = 400
}

resource "aws_lb_target_group" "noweder-tg" {
  name     = "noweder-lb-tg-${substr(uuid(), 0, 4)}"
  port     = var.tg_port     #80
  protocol = var.tg_protocol # "HTTP"
  vpc_id   = var.vpc_id      #from networking
  health_check {
    healthy_threshold   = var.lb_healthy_threshold   #2
    unhealthy_threshold = var.lb_unhealthy_threshold #2
    timeout             = var.lb_timeout             #3
    interval            = var.lb_interval            #30
  }
}