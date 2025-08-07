#!/bin/bash
if ! docker image inspect myapp/nginx:latest > /dev/null 2>&1; then
  docker build -f ../Dockerfile -t my-nginx-image ../
else
  echo "Docker image already exists. Skipping build."
fi
