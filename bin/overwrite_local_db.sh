#!/bin/bash

DIRNAME=$(dirname "$0")

PG_USER=$(cat $DIRNAME/../config/database.yml | grep username | cut -d ' ' -f 4 | head -n 1)
DUMP_FILE=latest.dump

echo "backing up heroku objective-mapper database"
BACKUP_NUMBER=$(heroku pg:backups capture -a objective-mapper | grep '\-\-\-backup\-\-\->' | cut -d ' ' -f 3)

echo "fetching backup into $DUMP_FILE"
if [ -f $DUMP_FILE ]
then
  rm $DUMP_FILE
fi
curl -o $DUMP_FILE $(heroku pg:backups public-url $BACKUP_NUMBER -a objective-mapper)

echo "restoring local database with $DUMP_FILE"
pg_restore --verbose --clean --no-acl --no-owner -h localhost -U $PG_USER -d om_development $DUMP_FILE
