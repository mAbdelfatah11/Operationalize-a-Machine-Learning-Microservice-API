#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t proj4-ml-microservice .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run --name proj4-ml-microservice --rm -it -p 8000:80 proj4-ml-microservice