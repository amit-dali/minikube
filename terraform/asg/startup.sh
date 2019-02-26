#!/bin/bash
curl -O https://raw.githubusercontent.com/amit-dali/minikube/master/setup/minikube_setup.sh && chmod 0755 minikube_setup.sh
curl -O https://raw.githubusercontent.com/amit-dali/minikube/master/setup/setup.sh && chmod 0755 setup.sh
bash minikube_setup.sh
bash setup.sh
/usr/local/bin/minikube stop
/usr/local/bin/minikube start --vm-driver=none
