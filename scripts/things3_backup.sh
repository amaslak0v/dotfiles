#!/env/bash

BACKUP_TARGET=~/Library/Group\ Containers/JLMPQHK86H.com.culturedcode.ThingsMac/Things\ Database.thingsdatabase

DATESTAMP=$(date +%m-%d-%Y)
BACKUP_SAVING_DIR=~/Documents/KB/3-Resources/Backup/Things3_backups/Things3_backup_$DATESTAMP/

printf "Backing up Things3... \n > Target: $BACKUP_TARGET \n > Saving dir: $BACKUP_SAVING_DIR \n"

mkdir -p $BACKUP_SAVING_DIR
cp -r "$BACKUP_TARGET" $BACKUP_SAVING_DIR/

echo $(ls $BACKUP_SAVING_DIR)
echo "Done!"
