# --- compute/outputs.tf ---

output "instance" {
  value = aws_instance.noweder_node[*]
}

output "instance_port" {
  value = aws_lb_target_group_attachment.noweder_tg_attach[0].port
}