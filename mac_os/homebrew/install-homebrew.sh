#!/bin/zsh

# Check for Homebrew
if [[ $(which brew) != "" ]] then
  echo "--- Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if [[ "$(uname)" = "Darwin" ]]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif [[ "$(expr substr $(uname -s) 1 5)" = "Linux" ]]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  else
    echo "--- Not support OS."
  fi
else
  echo "--- Homebrew is already installed."
fi
