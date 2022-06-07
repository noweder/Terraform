terraform {
  cloud {
    organization = "noweder-terraform"

    workspaces {
      name = "noweder-k8s"
    }
  }
}