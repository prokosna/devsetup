#!/bin/bash

echo "##### Install system inspection packages #####"
sudo apt update
sudo apt upgrade -y
sudo apt install -y \
	lm-sensors \
	stress-ng \
	sysstat \
	iperf3 \
	nmap \
	net-tools \
	strace \
	cpu-checker
sudo snap install btop

