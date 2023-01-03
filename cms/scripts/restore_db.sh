#!/bin/bash

input="$1"

if [ -z "$input" ]; then
  echo "Usage: $0 <path to backup file>"
  exit 1
fi

podman-compose exec db psql -U strapi  < "$input"