#!/usr/bin/env zsh

./mac_os/install_homebrew.zsh

xcodebuild -license accept

./mac_os/install_ohmyzsh.zsh

./mac_os/install_mise.zsh

./mac_os/setup_gpg.zsh

./mac_os/upsert_defaults.zsh

./vscode/setup_vscode.zsh

cp ./mac_os/.zsh_aliases ~/
echo -e "\n# Alias
source ~/.zsh_aliases" >> ~/.zshrc

# Alacritty
mkdir -p ~/.config/alacritty/
cp ./mac_os/alacritty.toml ~/.config/alacritty/

# Vim
cp ./mac_os/.vimrc ~/

# Neovim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Setup global git config
git config --global user.email "jason@binarydiver.com"
git config --global user.signingkey "B5A4BC94"
git config --global commit.gpgsign true
git config --global user.name "Jason Park"

# Do others:
echo "Turn off Desktop & Dock > Windows > \"Tiled windows have margin\"."
echo "Setting for Keyboard Shortcuts."
echo "Setting for Spotlight."
echo "Setting for Safari(extension, homepage, toolbar, inprivate)."
echo "Install iOS Simulator."
echo "Run flutter doctor."
echo "Setup SSH, GPG Key."
echo "GPG, set trust key."
echo "Edge / Chrome, sync."
