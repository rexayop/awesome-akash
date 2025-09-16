# Akash Deployment: Redis with Storj Backup

## Overview
This deployment creates a Redis database instance with an automated backup service that regularly exports Redis snapshots to a Storj decentralized cloud storage bucket.

## Running the application
Deploy on [Akash Console](https://console.akash.network/) with the configured [deploy.yaml](https://github.com/rexayop/awesome-akash/blob/redis-storj-backup/redis-storj-backup/deploy.yaml) file or with [deploy-shm.yaml](https://github.com/rexayop/awesome-akash/blob/redis-storj-backup/redis-storj-backup/deploy-shm.yaml) for enabled [Shared Memory (SHM)](https://akash.network/docs/getting-started/stack-definition-language/#shared-memory-shm) storage.

## Environment Variables (Backup Service)
The following environment variables must be configured before deployment:
1. STORJ_GRANT: Your Storj access grant
2. BUCKET_NAME: Your Storj bucket name
3. BACKUP_SCHEDULE: Cron schedule for backups (default: daily at 2 AM UTC)
