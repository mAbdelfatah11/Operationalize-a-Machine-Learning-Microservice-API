#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=proj4mlmicroservice/proj4-ml-microservice

# Step 2
# Run the Docker Hub container with kubernetes
docker login
kubectl run proj4-ml-microservice\
    --image=$dockerpath\
    --port=80 --labels app=proj4-ml-microservice

# Step 3:
# List kubernetes pods
kubectl get pods

echo "Sleeping for 10 seconds while waiting for pod to come up."
sleep 10

# Step 4:
# Forward the container port to a host
kubectl port-forward proj4-ml-microservice 8000:80
