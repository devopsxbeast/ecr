#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull devopsxbeast09/ecr

# Run the Docker image as a container
docker run -d -p 5000:5000 devopsxbeast09/ecr
