# --- networking/main.tf ---

resource "random_integer" "random" {
  min = 1
  max = 100
}

resource "aws_vpc" "noweder_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "noweder_vpc-${random_integer.random.id}"
  }
}