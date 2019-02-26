#!/bin/sh
echo "nginx-service url=" | minikube service nginx-service -n demo1 --url
echo "tomcat-service url=" | minikube service tomcat-service -n demo1 --url
