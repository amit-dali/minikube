#!/bin/sh
mkdir -p ~/amdali/assignment1
chmod 755 -R amdali
cd amdali/assignment1
curl -O https://raw.githubusercontent.com/amit-dali/minikube/master/ansible/assignment1.yml && chmod 0755 assignment1.yml
apt-get update -y &&  apt-get install -y docker.io
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.8.0/bin/linux/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/
source <(kubectl completion bash)
/usr/local/bin/minikube start --vm-driver=none
