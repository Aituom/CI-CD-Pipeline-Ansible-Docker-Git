#!/bin/bash
if ! docker image inspect myapp/nginx:latest > /dev/null 2>&1; then
  docker build -t myapp/nginx:latest .
else
  echo "Docker image already exists. Skipping build."
fi
