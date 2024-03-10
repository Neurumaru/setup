#!/usr/bin/env bash

# Need to install zsh first
# Need to install brew first

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install gcc pyenv pyenv-virtualenv autojump

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-hightlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp ./.zshrc ~/.zshrc
cp ./.p10k.zsh ~/.p10k.zsh
cp -r ./.dotfiles ~/.dotfiles