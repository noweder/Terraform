terraform {
  cloud {
    organization = "noweder-terraform"

    workspaces {
      name = "noweder-dev"
    }
  }
}