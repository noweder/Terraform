# Terraform with AWS

## Building a Kubenetes cluster using k3s with NGINX deployment on AWS

Install kubectl following the instructions in the following link: `https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/`

After cloning the repo and accessing this folder, make sure to run `terraform init`, and then run `terraform apply --auto-approve`

Once the apply is complete and outputs are displayed, copy the value of `kubeconfig` output and run it as a command in your CLI.

Run `kubectl get nodes` to verify your kubernetes cluster.

To deploy the nginx container, run `kubectl create -f deployment.yaml` from this working directory

To check the running container/s, run `kubectl get pods`

To access the nginx web server, copy the `load_balancer_endpoint` value and run it into your web browser. You should get the nginx welcoming page!
