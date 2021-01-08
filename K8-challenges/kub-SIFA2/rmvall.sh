#!/bin/bash
echo "command to delete all deployments and services"
kubectl delete -f service1.yaml -f service2.yaml -f service3.yaml -f service4.yaml