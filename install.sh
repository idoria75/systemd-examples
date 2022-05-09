#!/bin/bash

# Create folder for logs
mkdir -p /var/log/systemd-examples/

# Create folder for scripts
mkdir -p /usr/local/bin/systemd-examples/

# Copy scripts to bin folder
cp ./src/* /usr/local/bin/systemd-examples/

# Copy services to systemd folder
cp ./systemd/* /lib/systemd/system/

# Reload services
systemctl daemon-reload