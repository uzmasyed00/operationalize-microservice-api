#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
#docker build -t flaskapp .
docker build --tag flaskapp .

# Step 2: 
docker images

# Step 3:Map port 80 on the container to port 8000 on the host
docker run -d -p 8000:80 flaskapp
