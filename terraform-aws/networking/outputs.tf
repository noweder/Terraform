# --- networking/outputs.tf ---

output "vpc_id" {
  value = aws_vpc.noweder_vpc.id
}