# minikube
Assignment 1

Task Details:
- Based on Minikube
- Deploy tomcat v8 to minikube
- Deploy sample.war to tomcat (use this: https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/ )
- Bind tomcat service to hostport 8090
- Deploy nginx/apache to minikube
- Bind nginx/apache to hostport 8080
- Include simple "hello world" in index.html of nginx

Extra Task:
- Make a small terraform project, that deploys a centos AMI to a new VPC.
- To be able to curl http://google.com from inside the AMI.

TODO: new VPC (Reason: Considering this to complete within 48 hrs, but in real just 10 hrs. during working day)
_________________________________________________________________________________________________________________

# Main Task :
   # Prerequisites:
   - ubuntu OS VM *
      I used ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-20180912 (ami-00035f41c82244dab) on AWS VPC
   - docker
   - minikube 
   - kubectl 
   - Internet connectivity
   - compliance checks off
   - whitelisted some of the urls
   - proxy settings in respective commands, if there is use of proxy server
   - ansible-playbook 
   - openshift python module
   - python-pip
   - Has required iam role and policy for VM/EC2
   - Execution as root user (sudo -i) *
   - Required firewall/security group changes

Step (1) After login to VM/EC2. do switch user using
   --> sudo -i 

Step [Optional, if you already have minikube and kubectl] 
(2) execute shell script minikube_setup.sh from minikube/setup. Might need to give execute permission before.
   --> bash minikube_setup.sh
   
Step (2) excute. This takes care whole implementation of Main task. You can read setup.sh, which has steps for same. Main login is in minikube/ansible/assignment1.yml. setup.sh file is in minikube/setup/. Might need to give execute permission before.
   --> bash setup.sh

# Extra Task:
   # Prerequisites:
   - ubuntu OS VM
      I used ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-20180912 (ami-00035f41c82244dab) on AWS VPC
   - Internet connectivity
   - compliance checks off
   - whitelisted some of the urls
   - proxy settings in respective commands, if there is use of proxy server
   - Has required iam role and policy for VM/EC2 *
   - Execution as root user (sudo -i)
   - terraform 0.11.11
   - unzip
   - Required firewall/security group changes
