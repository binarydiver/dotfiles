#!/bin/zsh

# Check for Homebrew
if [[ $(which brew) != "" ]] then
  echo "--- Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if [[ "$(uname)" = "Darwin" ]] || [[ "$(expr substr $(uname -s) 1 5)" = "Linux" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/main/.zprofile  
    brew install mas
else
    echo "--- Not support OS."
  fi
else
  echo "--- Homebrew is already installed."
fi
