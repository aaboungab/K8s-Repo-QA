#!/bin/bash

echo "Build a new Docker image as a new version"
sudo docker build -t nginx:v1 .

echo "Push the image to a registry, Docker Hub for example"
sudo docker tag ae2feff98a0c aaboungab/nginx:v1 
sudo docker login
sudo docker push aaboungab/nginx:v1 

echo "Update the image running in the Pod in the cluster"
kubectl set image pod/nginx-cc7df4f8f-k2t7t nginx=nginx:v1