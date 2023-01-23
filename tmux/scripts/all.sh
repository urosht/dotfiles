#!/bin/bash

k8s=$("$DOTFILES/tmux/scripts/k8s.sh")
ip=$("$DOTFILES/tmux/scripts/ip.sh")
tf=$("$DOTFILES/tmux/scripts/terraform.sh")
user=$("$DOTFILES/tmux/scripts/user.sh")

echo "${k8s}${ip}${tf}${user}"
