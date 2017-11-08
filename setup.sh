#!/usr/bin/env bash
set -e

source ./zsh/zshenv.symlink

# Check OS
source /etc/os-release
OS=$NAME

echo -e "\nOS: $OS"

# Link neofetch config
source $DOTFILES/scripts/neofetch.sh

# Link dotfiles
source $DOTFILES/scripts/links.sh
source $DOTFILES/scripts/zsh.sh
source $DOTFILES/scripts/tmux.sh


echo -e "\nDone"
