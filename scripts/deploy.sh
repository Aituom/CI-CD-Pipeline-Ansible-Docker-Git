#!/bin/bash
docker rm -f myapp 2>/dev/null
docker run -d --name nginx-container -p 8081:80 my-nginx-image
