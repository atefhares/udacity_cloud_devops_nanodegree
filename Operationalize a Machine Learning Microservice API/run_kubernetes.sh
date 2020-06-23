#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path

# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f kubernetes_deployment.yaml

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment udacitypythonapp --type=LoadBalancer --port=80 --target-port=80
