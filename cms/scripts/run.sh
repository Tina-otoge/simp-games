#!/bin/bash

# To install new deps:
# >>> ./scripts/run.sh yarn add <package>
# Do not forget to rebuild the image afterwards (you can use rebuild.sh)

podman-compose run strapi "$@"