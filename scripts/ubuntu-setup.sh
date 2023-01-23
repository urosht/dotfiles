#!/usr/bin/env bash

echo -e "\\nRunning Ubuntu setup..."
sudo apt -y install \
  htop \
  make \
  python \
  vim \
  neovim \
  python-neovim \
  tmux \
  neovim \
  zsh \
  jq \
  openjdk-8-jdk \
  maven

echo -e "\\nAdding neofetch repository..."
sudo add-apt-repository -y ppa:dawidd0811/neofetch
sudo apt update && sudo apt -y install neofetch
