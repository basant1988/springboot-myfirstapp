#!/bin/bash
# ------------------------------------------------------------------
# [Basant] Deploy and update on EKS
#          Description
# ------------------------------------------------------------------

if kubectl get deployments | grep spring-boot-app
then
kubectl set image deployment spring-boot-app spring-boot-app=911438711233.dkr.ecr.eu-west-1.amazonaws.com/appimages:latest
kubectl rollout restart deployment spring-boot-app

else
kubectl apply -f spring-boot.yaml
fi
