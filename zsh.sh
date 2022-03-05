#!/bin/bash

echo "##### Setup zsh #####"
sudo apt update
sudo apt install -y \
	zsh \
	fonts-powerline

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

cp zshrc ~/.zshrc

cat <<"EOF" >> ~/.bashrc

# zsh
exec zsh
EOF

