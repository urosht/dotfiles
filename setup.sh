#!/usr/bin/env bash
set -e

source ./zsh/zshenv.symlink

# Check OS
source /etc/os-release
OS=$NAME

echo -e "\nOS: $OS"

# Link dotfiles
source $DOTFILES/scripts/links.sh

echo -e "\nDone"
