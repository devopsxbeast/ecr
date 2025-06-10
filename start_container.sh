#!/bin/bash
set -e

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 727646469467.dkr.ecr.us-east-1.amazonaws.com/updated
# Pull the Docker image from ECR
docker pull 727646469467.dkr.ecr.us-east-1.amazonaws.com/updated:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 727646469467.dkr.ecr.us-east-1.amazonaws.com/updated:latest
