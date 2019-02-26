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

Main Task :
1) Prerequisites:
   - ubuntu OS VM
      I used ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-20180912 (ami-00035f41c82244dab) on AWS VPC
   - docker
   - minikube 
   - kubectl 
   - Internet connectivity
   - compliance checks off
   - whitelisted some of the urls
   - proxy settings in respective commands, if there is use of proxy server

Step (1) execute bash shell script minikube_setup.sh from minikube/setup
