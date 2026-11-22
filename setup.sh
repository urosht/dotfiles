#!/usr/bin/env bash
set -e

source ./zsh/zshenv.symlink

# This branch targets Manjaro only (one branch per OS)
source /etc/os-release
if [[ "$ID" != "manjaro" ]]; then
  echo "This branch is for Manjaro, detected: $NAME. Check out the matching OS branch."
  exit 1
fi

echo -e "\n=== OS: $NAME ==="

# Install packages
source $DOTFILES/scripts/manjaro-setup.sh

# Link dotfiles and set up tools
source $DOTFILES/scripts/links.sh
source $DOTFILES/scripts/konsole.sh
source $DOTFILES/scripts/tmux.sh
source $DOTFILES/scripts/vim.sh
source $DOTFILES/scripts/zsh.sh

echo -e "\nDone"
