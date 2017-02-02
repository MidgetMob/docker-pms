#!/bin/bash

until [ -d "/data" ]; do
  echo "Waiting for data directory..."
  sleep 10
done

chown -R plex:plex /data

tail -f /dev/null
