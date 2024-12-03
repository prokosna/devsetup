#!/bin/bash

echo "##### Install dependencies to build Python #####"
sudo apt update
sudo apt upgrade -y
# https://github.com/pyenv/pyenv/wiki#suggested-build-environment
sudo apt install -y \
	build-essential \
	libssl-dev \
	zlib1g-dev \
	libbz2-dev \
	libreadline-dev \
	libsqlite3-dev \
	libncursesw5-dev \
	xz-utils \
	tk-dev \
	libxml2-dev \
	libxmlsec1-dev \
	libffi-dev \
	liblzma-dev
