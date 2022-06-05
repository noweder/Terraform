# Terraform with AWS

## Building a Kubenetes cluster using k3s with NGINX deployment
After running `terraform apply`, access the EC2 instance `ssh -i ~/.ssh/keynoweder ubuntu@<EC2-public-ip>` and then create a new file named `deployment.yml` and inserting below code:
```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx
spec:
  replicas: 2
  selector:
    matchLabels:
      # manage pods with the label app: nginx
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx
        ports:
        - containerPort: 80
          hostPort: 8000
```
Next, run `kubectl apply -f deployment.yaml`

You can verify by running `curl localhost:8000`