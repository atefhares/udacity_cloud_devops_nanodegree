#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=atefhares/udacity:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run python_app --image=udacity_python_app --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment python_app --type=LoadBalancer --port=80 --target-port=80
