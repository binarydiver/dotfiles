#!/usr/bin/env zsh

# ref. https://github.com/ohmyzsh/ohmyzsh/wiki
# ref. https://github.com/zsh-users/zsh-completions
# ref. https://github.com/zsh-users/zsh-autosuggestions
# ref. https://github.com/zdharma-continuum/fast-syntax-highlighting

# Install ohmyzsh.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup zsh completion.
brew install zsh-completions
echo -e "\n# zsh-completions
if type brew &>/dev/null; then
  FPATH=\$(brew --prefix)/share/zsh-completions:\$FPATH
  autoload -Uz compinit
  compinit
fi" >> ~/.zshrc

# Setup auto suggstion.
brew install zsh-autosuggestions
echo -e "\n# zsh-autosuggestions
source \$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# Setup syntax highlighting
brew install zsh-fast-syntax-highlighting
echo -e "\n# zsh-fast-syntax-highlighting
source \$(brew --prefix)/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" >> ~/.zshrc
