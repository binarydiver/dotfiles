#!/usr/bin/env zsh

mkdir -p ~/.gnupg

cp ./.gnupg/* ~/.gnupg/

gpgconf --reload
