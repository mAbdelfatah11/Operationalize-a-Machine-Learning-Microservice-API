#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="nawfaltachfine/ml-microservice"
version="1.0"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag proj4-ml-microservice $dockerpath:$version

# Step 3:
# Push image to a docker repository
docker push $dockerpath:$version
