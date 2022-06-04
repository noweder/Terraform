# --- loadbalancing/main.tf ---

resource "aws_lb" "noweder-lb" {
  name            = "noweder-loadbalancer"
  subnets         = var.public_subnets
  security_groups = [var.public_sg]
  idle_timeout    = 400
}

resource "aws_lb_target_group" "noweder_tg" {
  name     = "noweder-lb-tg-${substr(uuid(), 0, 4)}"
  port     = var.tg_port     #80
  protocol = var.tg_protocol # "HTTP"
  vpc_id   = var.vpc_id      #from networking
  lifecycle {
    ignore_changes = [name]
    create_before_destroy = true
  }
  health_check {
    healthy_threshold   = var.lb_healthy_threshold   #2
    unhealthy_threshold = var.lb_unhealthy_threshold #2
    timeout             = var.lb_timeout             #3
    interval            = var.lb_interval            #30
  }
}

resource "aws_lb_listener" "noweder_lb_listener" {
  load_balancer_arn = aws_lb.noweder-lb.arn
  port              = var.listener_port     #80
  protocol          = var.listener_protocol # "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.noweder_tg.arn
  }
}