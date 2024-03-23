#!/usr/bin/env bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone git://github.com/wting/autojump.git
cd autojump
./install.py
cd ..
rm -rf autojump

mkdir -p ~/.dotfiles
cp ./files/zshrc ~/.zshrc
cp ./files/p10k.zsh ~/.p10k.zsh
cp ./files/dotfiles/aliases ~/.dotfiles/aliases