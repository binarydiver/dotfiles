#!/usr/bin/env zsh

# Only show active apps on Dock:
defaults write com.apple.dock static-only -bool TRUE; 

# Indicate hidden app icons on Dock:
defaults write com.apple.dock showhidden -bool TRUE;

# Auto hide on Dock:
defaults write com.apple.dock autohide -bool TRUE;

# restart Dock:
killall Dock;

# TextEdit
defaults write com.apple.TextEdit RichText -int 0;
defaults write com.apple.TextEdit NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false;
defaults write com.apple.TextEdit author -string "Jason Park";
defaults write com.apple.TextEdit NSFixedPitchFont 'NanumGothic';
defaults write com.apple.TextEdit NSFixedPitchFontSize -int 16;
defaults write com.apple.TextEdit WidthInChars -int 64
defaults write com.apple.TextEdit HeightInChars -int 32
