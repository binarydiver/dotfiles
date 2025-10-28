#!/usr/bin/env zsh

echo "--- Install WOL script ---"

REPO_DIR=~/Workspace/_fork/

mkdir -p $REPO_DIR

echo " >> Clone WOL repository"
git clone git@github.com:timofurrer/WOL.git $REPO_DIR/WOL

mkdir -p ~/.local/bin/

echo " >> Compile wol and move wol to executable place"
gcc -Wall -o ~/.local/bin/wol $REPO_DIR/WOL/src/wol.c

