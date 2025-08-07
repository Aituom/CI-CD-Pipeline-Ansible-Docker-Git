#!/bin/bash
if ! docker image inspect myapp/nginx:latest > /dev/null 2>&1; then
  SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
  PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
  docker build -f "$SCRIPT_DIR/Dockerfile" -t my-nginx-image "$PROJECT_ROOT"
else
  echo "Docker image already exists. Skipping build."
fi
