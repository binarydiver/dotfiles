#!/bin/zsh

echo "--- Install pyenv."
brew install pyenv

echo "--- Add setting to zshrc."
echo -e "\n# pyenv"
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

source ~/.zshrc

echo "--- Install python 3.8.5 by pyenv."
pyenv install 3.8.5

echo "--- Install pyenv-virtualenv."
brew install pyenv-virtualenv

echo "--- Add setting to zshrc."
echo -e "\n# pyenv-virtualenv"
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc

# ref. https://github.com/pyenv/pyenv
# ref. https://github.com/pyenv/pyenv-virtualenv
# ref. https://jiyeonseo.github.io/2016/07/27/install-pyenv/
