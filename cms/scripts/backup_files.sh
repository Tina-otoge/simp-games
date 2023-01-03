#!/bin/bash

output_dir=./backups
mkdir -p $output_dir
output=$output_dir/$(date +%Y-%m-%d_%H-%M-%S).tar.gz
tar -cvzf "$output" ./app/.env ./app/public