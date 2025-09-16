#!/bin/bash

if [ -z "$STORJ_GRANT" ]; then
    echo "ERROR: STORJ_GRANT is not set" >> /var/log/backup.log
    exit 1
fi

if [ -z "$BUCKET_NAME" ]; then
    echo "ERROR: BUCKET_NAME is not set" >> /var/log/backup.log
    exit 1
fi

TIMESTAMP=$(date +%Y%m%d%H%M%S)
BACKUP_FILE="/backups/redis-$TIMESTAMP.rdb"

# Create backup
redis-cli -h redis --rdb $BACKUP_FILE

# Upload to Storj
/usr/local/bin/uplink cp --access=$STORJ_GRANT $BACKUP_FILE sj://$BUCKET_NAME/redis-$TIMESTAMP.rdb

# Cleanup old backups
find /backups -type f -mtime +7 -name '*.rdb' -delete
