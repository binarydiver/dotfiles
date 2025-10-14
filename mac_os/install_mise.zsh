#!/usr/bin/env zsh

# ref. https://mise.jdx.dev/getting-started.html

brew install mise

mise use -g go@1.25
mise use -g java@17
mise use -g node@20
mise use -g python@3.14
mise use -g ruby@3.4

echo -e "\n#mise activation
eval \"$(mise activate zsh --shims)\"" >> ~/.zshrc

mise doctor

mise list