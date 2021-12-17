#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=josephjoy038/pyapp

# Step 2:  
# Authenticate & tag
docker login -u josephjoy038 -p 37c002e6-e89f-48ba-a5aa-bf5c6157fce6
docker image tag app $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker image push $dockerpath
