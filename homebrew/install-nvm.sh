#!/bin/zsh

echo "--- Install nvm."
brew install nvm

echo "--- Add setting to zshrc."
mkdir ~/.nvm
echo "export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion" >> ~/.zshrc

source ~/.zshrc

echo "--- Install latest node-lts."
nvm install --lts
