#!/bin/zsh

# Run Homebrew through the Brewfile
cd "$(dirname $0)"
echo "› brew bundle"
brew bundle

