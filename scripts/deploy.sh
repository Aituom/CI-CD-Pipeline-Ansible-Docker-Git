#!/bin/bash
docker rm -f nginx-container 2>/dev/null
docker run -d --name nginx-container -p 8081:80 my-nginx-image
