#!/usr/bin/env bash
set -e

# Link neovim config
echo -en "\\Linking neovim config... "
if  [ -e "$HOME/.config/nvim/init.vim" ]; then
    echo "Already exists"
else 
   # Create dir if doesn't exist
   if [ ! -e "$HOME/.config/nvim" ]; then
      mkdir -p "$HOME/.config/nvim"
   fi
   # Symlink config file 
   ln -s "$DOTFILES/vim/init.vim" "$HOME/.config/nvim/init.vim"
   echo -en "\\n"
fi
