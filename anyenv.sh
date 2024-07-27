#!/bin/bash

echo "##### Setup anyenv #####"
git clone https://github.com/anyenv/anyenv ~/.anyenv

cat <<"EOF" >> ~/.bashrc

# anyenv
export PATH=$PATH:~/.anyenv/bin
eval "$(anyenv init -)"
EOF

mkdir -p ~/.anyenv/plugins
git clone https://github.com/znz/anyenv-update.git ~/.anyenv/plugins/anyenv-update

