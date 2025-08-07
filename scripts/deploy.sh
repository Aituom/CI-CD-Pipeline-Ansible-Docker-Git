#!/bin/bash
docker rm -f myapp 2>/dev/null
docker run -d --name myapp -p 8081:80 myapp/nginx:latest
