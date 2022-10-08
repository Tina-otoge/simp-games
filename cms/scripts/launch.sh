#!/bin/bash

podman-compose down -t 1
podman-compose up --force-recreate