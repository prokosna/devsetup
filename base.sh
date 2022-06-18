#!/bin/bash

echo "##### Install base packages #####"
sudo apt update
sudo apt upgrade -y
sudo apt install -y \
	build-essential \
	vim \
	curl \
	wget \
	htop \
	terminator \
	screen \
	fcitx-mozc \
	gmpc \
	xz-utils \
	libglu1-mesa \
	zlib1g-dev \
	libreadline-dev \
	libncursesw5-dev \
	libssl-dev \
	libsqlite3-dev \
	libgdbm-dev \
	libbz2-dev \
	liblzma-dev \
	uuid-dev \
	libffi-dev \
	libdb-dev \
	clang \
	cmake \
	ninja-build \
	libgtk-3-dev

