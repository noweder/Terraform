# --- loadbalancing/main.tf ---

resource "aws_lb" "noweder-lb" {
  name            = "noweder-loadbalancer"
  subnets         = var.public_subnets
  security_groups = [var.public_sg]
  idle_timeout    = 400
}