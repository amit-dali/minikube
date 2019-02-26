#!/bin/sh
mkdir -p ~/amdali/assignment1
chmod 755 -R amdali
cd amdali/assignment1
curl -O https://raw.githubusercontent.com/amit-dali/minikube/master/ansible/assignment1.yml && chmod 0755 assignment1.yml
apt-get update
apt-get --assume-yes install software-properties-common docker-compose python-pip
apt-add-repository --yes --update ppa:ansible/ansible
apt-get --assume-yes install ansible 
echo "127.0.0.1" > ~/ansible_hosts
export ANSIBLE_INVENTORY=~/ansible_hosts
apt-get --assume-yes install docker-compose
pip install openshift requests
ansible-playbook assignment1.yml -i 'local,' --connection=local
