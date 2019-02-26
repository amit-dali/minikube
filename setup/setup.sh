#!/bin/sh
apt-get update
apt-get install software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt-get install ansible
echo "127.0.0.1" > ~/ansible_hosts
export ANSIBLE_INVENTORY=~/ansible_hosts
apt-get install docker-compose
apt install python-pip
pip install openshift
pip install --upgrade requests
ansible-playbook assignment1.yml -i 'local,' --connection=local
