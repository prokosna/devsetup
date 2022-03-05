#!/bin/bash

echo "##### Install flutter #####"
git clone https://github.com/flutter/flutter.git ~/flutter

cat <<"EOF" >> ~/.bashrc

# Flutter
export PATH=$PATH:~/flutter/bin
EOF

