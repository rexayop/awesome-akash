# Use Ubuntu base image
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    redis-tools \
    curl \
    bash \
    unzip \
    cron \
    wget \
    && mkdir -p /backups /var/log

# Download and install Uplink CLI
RUN wget -qO /tmp/uplink.zip https://github.com/storj/storj/releases/download/v1.136.4/uplink_linux_amd64.zip && \
    unzip -o /tmp/uplink.zip -d /tmp && \
    mv /tmp/uplink /usr/local/bin/uplink && \
    chmod +x /usr/local/bin/uplink && \
    rm -rf /tmp/uplink.zip

# Copy backup script
COPY backup-script.sh /backup-script.sh
RUN chmod +x /backup-script.sh

# Copy init script
COPY init.sh /init.sh
RUN chmod +x /init.sh

# Expose Redis port for visibility
EXPOSE 6379

# Use the init script as entrypoint
CMD ["/init.sh"]
