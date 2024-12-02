#!/bin/bash

echo "##### Install base packages #####"
sudo apt update
sudo apt upgrade -y
sudo apt install -y \
	git \
	git-lfs \
	vim-gtk3 \
	curl \
	wget \
	htop \
	terminator \
	screen \
	fcitx-mozc \
	clang \
	cmake \
	cifs-utils \
	tree

VIM_GTK3_PATH=$(which vim.gtk3)
sudo update-alternatives --set editor "$VIM_GTK3_PATH"
