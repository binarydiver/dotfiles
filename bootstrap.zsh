#!/usr/bin/env zsh

./mac_os/install_homebrew.zsh

./mac_os/install_ohmyzsh.zsh

./mac_os/install_mise.zsh

./mac_os/setup_gpg.zsh

./mac_os/upsert_defaults.zsh

./vscode/setup_vscode.zsh

cp ./mac_os/.zsh_aliases ~/

cp ./mac_os/.vimrc ~/

# Neovim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Setup global git config
git config --global user.email "jason@binarydiver.com"
git config --global user.signingkey B5A4BC94
git config --global commit.gpgsign true
git config --global user.name "Jason Park"
