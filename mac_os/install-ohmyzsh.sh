#!/bin/zsh

# Install ohmyzsh.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup zsh completion.
brew install zsh-completions
echo -e "\n# zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi" >> ~/.zshrc
chmod -R go-w "$(brew --prefix)/share"
rm -f ~/.zcompdump; compinit

# Setup auto suggstion.
brew install zsh-autosuggestions
echo -e "\n# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc