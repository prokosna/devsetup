#!/bin/bash

echo "##### Install base packages #####"
sudo apt update
sudo apt upgrade -y
sudo apt install -y \
	build-essential \
	git \
	vim \
	curl \
	wget \
	htop \
	tmux \
	fcitx-mozc \
	gmpc

