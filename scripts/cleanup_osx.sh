#!/bin/bash
# This is script for cleaning OSX from sys junk
set -e

# Set variables
#
# Check Free space 
echo "> Free space available"
diskutil info / | grep "Free"

#  Brew
echo "> Brew cleanup"
brew update && brew upgrade && brew cleanup
brew doctor

# Docker
echo "> Docker cleanup"
docker system df # evaluate

docker system prune
docker volume prune
docker rmi $(docker images -a -q)

```
