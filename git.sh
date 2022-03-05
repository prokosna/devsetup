#!/bin/bash

echo "##### Setup git libsecret #####"
sudo apt update
sudo apt install -y \
	libsecret-1-0 \
	libsecret-1-dev

sudo make --directory=/usr/share/doc/git/contrib/credential/libsecret

git config --global credential.helper \
   /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
