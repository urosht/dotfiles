#!/usr/bin/env bash

# Link Konsole profile and make it the default
echo -en "\nLinking Konsole profile... "
profile_dir="$HOME/.local/share/konsole"
mkdir -p "$profile_dir"

if [ -L "$profile_dir/Dotfiles.profile" ]; then
    echo "Already linked"
else
    [ -e "$profile_dir/Dotfiles.profile" ] && mv "$profile_dir/Dotfiles.profile" "$profile_dir/Dotfiles.profile.bak"
    ln -s "$DOTFILES/konsole/Dotfiles.profile" "$profile_dir/Dotfiles.profile"
    echo "linked"
fi

kwriteconfig6 --file konsolerc --group "Desktop Entry" --key DefaultProfile Dotfiles.profile
