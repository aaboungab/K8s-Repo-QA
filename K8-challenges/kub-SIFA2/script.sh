#!/bin/bash
echo "command to create all deployments and services"
kubectl apply -f service1.yaml -f service2.yaml -f service3.yaml -f service4.yaml