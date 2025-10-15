#!/usr/bin/env zsh

echo "-- Prerequire --"
sudo xcode-select --install

echo "-- Install Homebrew --"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "-- Install mas --"
brew install mas

echo "-- Install brew bundle --"
sudo -u $(whoami) brew bundle --file=./brewfile

echo "-- Check installation --"
brew doctor