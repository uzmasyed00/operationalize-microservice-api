#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=uzmasyed00/flaskapp:firsttry

# Step 2: Run the Docker Hub container with kubernetes
kubectl run kubernetes-flaskapp --image=$dockerpath --port=80

# Step 3: List kubernetes pods
kubectl get pods

# Step 4: Forward application running on cluster on port 8080 to localhost:8000 on host
kubectl port-forward $(kubectl get pods -o=name | grep kubernetes-flaskapp | sed "s/^.\{4\}//") 8000:80


