#!/bin/bash
export KEY_PAIR_NAME=$1
mkdir -p ~/amdali/minikube/terraform
cd ~/amdali/minikube/terraform
terraform -version
terraform destroy -var "key_name=${KEY_PAIR_NAME}" -auto-approve
