#!/bin/bash

echo "##### Install base packages #####"
sudo apt update
sudo apt upgrade -y
sudo apt install -y \
	build-essential \
	vim-gtk \
	curl \
	wget \
	htop \
	terminator \
	screen \
	fcitx-mozc \
	xz-utils \
	libsqlite3-dev \
	libbz2-dev \
	liblzma-dev \
	libreadline-dev \
	clang \
	cmake \
	lm-sensors \
	stress-ng \
	sysstat \
	iperf3 \
	tree \
	nmap \
	flac \
	wavpack \
	ffprobe \
	ffmpeg
