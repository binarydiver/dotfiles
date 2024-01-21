#!/bin/zsh

# Only show active apps on Dock:
defaults write com.apple.dock static-only -bool TRUE; 

# Indicate hidden app icons on Dock:
defaults write com.apple.dock showhidden -bool TRUE;

# Auto hide on Dock:
defaults write com.apple.dock autohide -bool TRUE;

# restart Dock:
killall Dock;

# Use plain text as default on TextEdit:
defaults write com.apple.TextEdit RichText -int 0

# Open blank text file as default on TextEdit:
defaults write com.apple.TextEdit NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false;

# Set default font on TextEdit:
defaults write com.apple.TextEdit NSFixedPitchFont 'SourceCodeProRoman-Regular'
defaults write com.apple.TextEdit NSFixedPitchFontSize -int 16

# Set window size on TextEdit:
defaults write com.apple.TextEdit WidthInChars -int 64
defaults write com.apple.TextEdit HeightInChars -int 32

# Show develop menu on Safari:
defaults write com.apple.com.apple.Safari.SandboxBroker ShowDevelopMenu -bool true