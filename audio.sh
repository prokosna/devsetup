#!/bin/bash

echo "##### Install audio packages #####"
sudo apt update
sudo apt upgrade -y
sudo apt install -y \
	flac \
	wavpack \
	ffprobe \
	ffmpeg
