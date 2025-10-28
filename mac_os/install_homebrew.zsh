#!/usr/bin/env zsh

echo "-- Prerequire --"
sudo xcode-select --install

echo "-- Install Homebrew --"
if command -v brew >/dev/null 2>&1; then
  echo "Homebrew is already installed!"
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "-- Install mas --"
brew install mas

echo "-- Install brew bundle --"
SCRIPT_DIR="${0:a:h}"
sudo -u $(whoami) brew bundle --file=$SCRIPT_DIR/brewfile

echo "-- Check installation --"
brew doctor
