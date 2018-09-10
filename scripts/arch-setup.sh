#!/usr/bin/env bash

set -e

echo -e "\\n=== Running Arch setup ==="

echo -e "\\n=== Installing pacman packages ==="
sudo pacman -S --needed --noconfirm \
  htop \
  make \
  neovim \
  python \
  python-neovim \
  python2-neovim \
  tmux \
  zsh \
  xclip

echo -e "\\n=== Installing AUR packages ==="
yay -S --noconfirm \
  neofetch 
