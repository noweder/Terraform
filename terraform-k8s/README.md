# Code to deploy nodered, influxdb, and grafana deployments on k8s

This terraform deployment depends on the `terraform-aws` deployment. please make sure to run that one first.

Then, make sure to update the below `config_path` inside `providers.tf` file with the correct name of the generated .yaml file found in 

```
provider "kubernetes" {
  # Configuration options
  config_path = "../k3s-noweder_node-20359.yaml"
}
```