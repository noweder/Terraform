# Code to deploy nodered, influxdb, and grafana deployments on k8s

This terraform deployment depends on the `terraform-aws` deployment. please make sure to run that one first.

Once the apply is complete and outputs are displayed, copy the value of `kubeconfig` output displayed in `terraform-aws` and run it as a command in your CLI.