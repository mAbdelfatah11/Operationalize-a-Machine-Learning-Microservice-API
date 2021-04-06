#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="proj4mlmicroservice/proj4-ml-microservice"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag proj4-ml-microservice:latest proj4mlmicroservice/proj4-ml-microservice:latest

# Step 3:
# Push image to a docker repository
docker push proj4mlmicroservice/proj4-ml-microservice:latest