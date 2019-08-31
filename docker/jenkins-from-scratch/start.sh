#!/bin/bash
echo "Starting docker container" 
read -p  "Enter (centos-jenkins): " container 
echo "Container : ${container:=centos-jenkins}"
docker run -p 8080:8080 ${container}

DockerId="$(docker ps -q)"
docker ps

