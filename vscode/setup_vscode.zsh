#!/usr/bin/env zsh

# Amazon Q
code --install-extension amazonwebservices.amazon-q-vscode

# Go
code --install-extension golang.go

# Dart
code --install-extension Dart-Code.dart-code

# Flutter
code --install-extension Dart-Code.flutter

# Python
code --install-extension ms-python.python
code --install-extension ms-python.debugpy
code --install-extension ms-python.vscode-python-envs

# Java
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-lombok

# Swift
code --install-extension swiftlang.swift-vscode

# Container Tools
code --install-extension ms-azuretools.vscode-containers

# PostgreSQL
code --install-extension ms-ossdata.vscode-pgsql

# Get directory of current script
SCRIPT_DIR="${0:a:h}"

# replace key binding
sudo cp $SCRIPT_DIR/keybindings.js ~/Library/Application\ Support/Code/User/

# replace settings
sudo cp $SCRIPT_DIR/settings.json ~/Library/Application\ Support/Code/User/
