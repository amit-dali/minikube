#!/bin/sh
cd /tmp/	  
curl -O https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip /tmp/
apt install unzip
unzip /tmp/terraform_0.11.11_linux_amd64.zip -d /usr/local/bin
