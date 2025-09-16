#!/bin/bash

touch /var/log/backup.log

{
    echo "STORJ_GRANT=$STORJ_GRANT"
    echo "BUCKET_NAME=$BUCKET_NAME"
    echo "$BACKUP_SCHEDULE root /bin/bash /backup-script.sh >> /var/log/backup.log 2>&1"
} > /etc/cron.d/backup-job

chmod 0644 /etc/cron.d/backup-job

cron

tail -f /var/log/backup.log
