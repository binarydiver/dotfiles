#!/bin/zsh

# Install applications through the Brewfile.
#read -r -s pass\?"sudo password for $(whoami):"
brew bundle --file=./brewfile

