#!/bin/bash

set -e

NO_CACHE_OPT=""
if [[ "$1" == "--no-cache" ]]; then
  NO_CACHE_OPT="--no-cache"
fi

ROOT_DIR="$(cd "$(dirname "$0")/.." || exit; pwd -P)"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${SCRIPT_DIR}/consts.sh"

docker build \
	--build-arg USER_NAME=$USER_NAME \
	--build-arg GROUP_NAME=$GROUP_NAME \
	--build-arg UID=$(id -u) \
	--build-arg GID=$(id -g) \
	$NO_CACHE_OPT \
	-f "${SCRIPT_DIR}/Dockerfile" \
	-t "$IMAGE_NAME" \
	"$ROOT_DIR"
