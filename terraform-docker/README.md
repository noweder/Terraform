# Terraform with Docker

## Bulding a docker deployment with below containers:

- Nodered
- Grafana
- Influxdb

First, clone this repo and access this working directory. Then, run `terraform init`.

Create two workspaces (prod, dev) with below commands:
```
terraform workspace new prod
terraform workspace new dev
```
Select the required workspace by running terraform working select <NAME>

Run `terraform apply -auto-approve`

Once the apply is completed, outputs will be shown. You can verify the running containers with `docker ps`.

To access the web management page of each application from your browser, replace the internal IP shown in the output with your public IP (make sure to use the proper external IP shown in outputs for each application).

If you want to destory the deployment, run `terraform destory -auto-approve`