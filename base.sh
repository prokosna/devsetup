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
	screen \
	fcitx5-mozc \
	clang \
	cmake \
	cifs-utils \
	tree

echo "##### Setup vim #####"
VIM_GTK3_PATH=$(which vim.gtk3)
sudo update-alternatives --set editor "$VIM_GTK3_PATH"

echo "##### Prohibit global pip install #####"
echo "$export PIP_REQUIRE_VIRTUALENV=true" >> ~/.bashrc
