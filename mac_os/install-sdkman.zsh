#!/bin/zsh

# ref. https://sdkman.io/install
curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk version

# Install Java
sdk install java 8.0.392-amzn
sdk install java 11.0.21-ms