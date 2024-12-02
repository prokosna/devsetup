#!/bin/bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${SCRIPT_DIR}/consts.sh"

docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
