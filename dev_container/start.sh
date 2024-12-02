#!/bin/bash

set -e

ROOT_DIR="$(cd "$(dirname "$0")/.." || exit; pwd -P)"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${SCRIPT_DIR}/consts.sh"

docker run -id \
	--name $CONTAINER_NAME \
	--volume $ROOT_DIR:/workspace \
	--volume $HOME/.gitconfig:/home/$USER_NAME/.gitconfig:ro \
	--user $(id -u):$(id -g) \
	$IMAGE_NAME
