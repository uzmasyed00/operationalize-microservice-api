#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
$dockerpath=uzmasyed00/housepprediction

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag f311274e71fd uzmasyed00/flaskapp:firsttry

# Step 3:
# Push image to a docker repository
docker push uzmasyed00/flaskapp