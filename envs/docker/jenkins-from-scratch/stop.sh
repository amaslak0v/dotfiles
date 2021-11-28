#!/bin/bash
echo "Stoping docker container" 
DockerId="$(docker ps -q)"
read -p  "Enter (${DockerId}): " container
echo "Container : ${container:=${DockerId}}"
docker stop ${DockerId}
docker ps

