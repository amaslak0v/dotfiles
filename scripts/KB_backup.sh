#!/env/bash


BACKUP_TARGET=~/Documents/KB/
BACKUP_PATH=~/Documents/KB.zip

# Zip with highest level of compression and password protection
zip -e -r -9 $BACKUP_PATH $BACKUP_TARGET
