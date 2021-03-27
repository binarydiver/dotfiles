#!/bin/zsh

# Copy default vim setting.
cp .vimrc ~/

# Install Vim Plug.
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
