#!/bin/bash

set -xeuf -o pipefail

ROOT="$( readlink -f "$( dirname "${BASH_SOURCE[0]}" )" )"
DOCKER_FILE="${ROOT}/docker-compose.yaml"

export MYSQL_DATA_DIR="${ROOT}/data"
export MYSQL_SCRIPTS_DIR="${ROOT}/scripts"

docker-compose --file "$DOCKER_FILE" up --detach --remove-orphans
