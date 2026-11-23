#!/usr/bin/env bash

# Set zsh as the default shell
if [ "${SHELL##*/}" != "zsh" ]; then
    echo -e "\nSetting zsh as the default shell..."
    chsh -s "$(command -v zsh)"
fi
