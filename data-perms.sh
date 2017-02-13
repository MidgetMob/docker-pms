#!/bin/bash

until [ -d "/data" ]; do
  echo "Waiting for data directory..."
  sleep 10
done

# Enforce permissions
chown -R plex:plex /data

# Leave open forever
tail -f /dev/null
