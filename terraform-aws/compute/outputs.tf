# --- compute/outputs.tf ---

output "instance" {
  value = aws_instance.noweder_node[*]
}