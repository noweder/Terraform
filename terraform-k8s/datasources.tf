data "terraform_remote_state" "kubeconfig" {
  backend = "remote"

  config = {
    organization = "noweder-terraform"
    workspaces = {
      name = "noweder-dev"
    }
  }
}