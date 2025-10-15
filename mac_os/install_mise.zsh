#!/usr/bin/env zsh

# ref. https://mise.jdx.dev/getting-started.html

echo "-- Install mise --"
brew install mise libyaml # libyaml need for compiling ruby

echo "-- Install tools --"
mise use -g go@1.25
mise use -g java@17
mise use -g node@20
mise use -g python@3.14
mise use -g ruby@3.4

echo "-- Add activation code --"
echo -e "\n#mise activation
eval \"$(mise activate zsh --shims)\"" >> ~/.zshrc

echo "-- zsh dump --"
compaudit | xargs chmod g-w

echo "-- Reload zshell --"
source ~/.zshrc

echo "-- Check installation --"
mise doctor

mise list
