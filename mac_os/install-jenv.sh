#!/bin/zsh

# Install jenv and java
echo "--- Install jenv."
brew install jenv

echo "--- Add settings to zshrc."
echo '# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"' >> ~/.zshrc

source ~/.zshrc

echo "--- Install openjdk@11."
brew install openjdk@11
sudo ln -sfn /usr/local/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
echo "--- Add openjdk-11 path to jenv."
jenv add /Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home

echo "--- Install adoptopenjdk8."
brew cask install adoptopenjdk8
echo "--- Add adoptopenjdk8 path to jenv."
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

echo "--- Set global version of Java to 1.8"
jenv global 1.8
