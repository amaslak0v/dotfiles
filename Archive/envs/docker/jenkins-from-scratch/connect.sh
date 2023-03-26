#!/bin/bash
echo "Connecting to" 
DockerId="$(docker ps -q)"
read -p  "Enter (${DockerId}): " container
echo "Container : ${container:=${DockerId}}"
docker exec -it ${DockerId} /bin/bash

