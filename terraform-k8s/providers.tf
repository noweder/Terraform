terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.11.0"
    }
  }
}

provider "kubernetes" {
  # Configuration options
  config_path = "../k3s-noweder_node-20359.yaml"
}