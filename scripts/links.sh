#!/usr/bin/env bash

# Link dotfiles
for file in $(find "$DOTFILES" -name "*.symlink"); do

  link="$HOME/.$(basename $file '.symlink')"
  echo -n "$link... "

  if [ -L "$link" ]; then
    echo "Already linked"
  else
    # Back up an existing regular file (e.g. the distro's default ~/.zshrc)
    if [ -e "$link" ]; then
      mv "$link" "$link.bak"
      echo -n "backed up to $link.bak, "
    fi
    ln -s "$file" "$link"
    echo "linked"
  fi

done
