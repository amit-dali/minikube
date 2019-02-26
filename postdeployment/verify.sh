#!/bin/sh
minikube service nginx-service -n demo1 --url
minikube service tomcat-service -n demo1 --url
