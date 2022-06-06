# --- loadbalancing/outputs.tf ---

output "lb_target_group_arn" {
  value = aws_lb_target_group.noweder_tg.arn
}

output "lb_endpoint" {
  value = aws_lb.noweder-lb.dns_name
}