#!/bin/bash
export KEY_PAIR_NAME=$1
mkdir -p ~/amdali/minikube/terraform
cd ~/amdali/minikube/terraform
curl -O https://raw.githubusercontent.com/amit-dali/minikube/master/terraform/asg/asg.tf
curl -O https://raw.githubusercontent.com/amit-dali/minikube/master/terraform/asg/outputs.tf
curl -O https://raw.githubusercontent.com/amit-dali/minikube/master/terraform/asg/startup.sh
curl -O https://raw.githubusercontent.com/amit-dali/minikube/master/terraform/asg/variables.tf

terraform -version
terraform init
terraform plan -refresh=true -var "key_name=${KEY_PAIR_NAME}"
terraform apply -var "key_name=${KEY_PAIR_NAME}" -auto-approve
