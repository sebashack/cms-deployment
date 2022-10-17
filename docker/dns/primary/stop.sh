#!/bin/bash

set -xeuf -o pipefail

ROOT="$( readlink -f "$( dirname "${BASH_SOURCE[0]}" )" )"
DOCKER_FILE="${ROOT}/docker-compose.yaml"

export NGINX_CONFIG_DIR="${ROOT}/config"
export WORDPRESS_DIR="${ROOT}/../wordpress"

docker-compose --file "$DOCKER_FILE" down
