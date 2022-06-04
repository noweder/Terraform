# --- compute/main.tf

data "aws_ami" "server_ami" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  #   filter {
  #         name   = "root-device-type"
  #         values = ["ebs"]
  #   }

  #   filter {
  #         name   = "virtualization-type"
  #         values = ["hvm"]
  #   }
}