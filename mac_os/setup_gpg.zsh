#!/usr/bin/env zsh

mkdir -p ~/.gnupg

SCRIPT_DIR="${0:a:h}"

cp $SCRIPT_DIR/.gnupg/* ~/.gnupg/

gpgconf --reload
