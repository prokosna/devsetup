#!/bin/bash

echo "##### Python #####"
sudo apt update
sudo apt upgrade -y
sudo apt install -y \
    software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt update
sudo apt upgrade -y
sudo apt install -y \
    python3.12 python3.12-venv


echo "##### Node.js (pnpm) #####"
curl -fsSL https://get.pnpm.io/install.sh | sh -


echo "##### Rust #####"
curl https://sh.rustup.rs -sSf | sh
