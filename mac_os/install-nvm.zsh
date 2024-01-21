#!/bin/zsh

# ref. https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating

echo "--- Install nvm."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo "--- Add setting to \".zshrc\"."
echo -e "\n# NVM
export NVM_DIR=\"\$([ -z "\${XDG_CONFIG_HOME-}" ] && printf %s \"\${HOME}/.nvm\" || printf %s \"\${XDG_CONFIG_HOME}/nvm\")\"
[ -s \"\$NVM_DIR/nvm.sh\" ] && \. \"\$NVM_DIR/nvm.sh\" # This loads nvm" >> ~/.zshrc
source ~/.zshrc

echo "--- Install specific node version."
nvm install 18
nvm alias default 18
