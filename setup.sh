#!/usr/bin/env bash
set -e

source ./zsh/zshenv.symlink

# Check OS
if [ "$(uname)" == "Darwin" ]; then
  OS="OSX"
else
  source /etc/os-release
  OS=$NAME
fi

echo -e "\n=== OS: $OS ==="

# Depending on OS, install packages
if [[ "$OS" =~ "Arch" ]]; then
  source $DOTFILES/scripts/arch-setup.sh
elif [[ "$OS" =~ "Ubuntu" ]]; then
  source $DOTFILES/scripts/ubuntu-setup.sh
elif [[ "$OS" = "OSX" ]]; then
  source $DOTFILES/scripts/osx-setup.sh
else
  echo "\nOS not supported, you will have to install packages manually"
fi

# Link neofetch config
source $DOTFILES/scripts/neofetch.sh

# Link dotfiles
source $DOTFILES/scripts/links.sh
source $DOTFILES/scripts/tmux.sh
source $DOTFILES/scripts/vim.sh
source $DOTFILES/scripts/zsh.sh

echo -e "\nDone"
