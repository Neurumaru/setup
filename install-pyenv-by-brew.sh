#!/usr/bin/env zsh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install pyenv pyenv-virtualenv
cp ./files/dotfiles/pyenv ~/.dotfiles/pyenv
