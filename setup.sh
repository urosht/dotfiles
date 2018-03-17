#!/usr/bin/env bash
set -e

source ./zsh/zshenv.symlink

# Check OS
source /etc/os-release
OS=$NAME

echo -e "\nOS: $OS"

# Depending on OS, install packages
if [[ "$OS" =~ "Arch" ]]; then
  source $DOTFILES/scripts/arch-setup.sh
elif [[ "$OS" =~ "Ubuntu" ]]; then
  source $DOTFILES/scripts/ubuntu-setup.sh
else
  echo "\nOS not Arch nor Ubuntu, you will have to install packages manually"
fi

# Link neofetch config
source $DOTFILES/scripts/neofetch.sh

# Link dotfiles
source $DOTFILES/scripts/links.sh
source $DOTFILES/scripts/zsh.sh
source $DOTFILES/scripts/tmux.sh
source $DOTFILES/scripts/vim.sh


echo -e "\nDone"
