# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository that manages configuration files for zsh, vim, tmux and git. Each OS has its own branch (`osx`, `manjaro`); this is the **`manjaro`** branch (Manjaro, KDE on Wayland, Konsole terminal). The repository uses a symlink-based architecture where files with `.symlink` extensions are automatically linked to `~/.filename` during setup.

## Architecture

### Core Environment Variables
All setup scripts source `zsh/zshenv.symlink` which defines:
- `$DOTFILES` - Points to `$HOME/dotfiles` (repository root)
- Used throughout all configuration files to reference other parts of the dotfiles

### Configuration Loading Pattern
Each tool uses a modular loading pattern:
- **zsh**: `zshrc.symlink` loads all `*.zsh` files from `zsh/` directory
- **vim**: `vimrc.symlink` sources individual vim config files in specific order
- **tmux**: `tmux.conf.symlink` sources all `*.conf` files from `tmux/` directory

### Symlink System
The `scripts/links.sh` script finds all files ending in `.symlink` and creates `~/.filename` symlinks. When adding new dotfiles:
1. Name the file `tool/filename.symlink`
2. Run setup script to create the symlink

## Setup and Installation

### Initial Setup
```bash
./setup.sh
```
This script:
1. Verifies the OS is Manjaro (exits otherwise)
2. Updates the system and installs packages via `scripts/manjaro-setup.sh` (pamac, repos + AUR), enables Docker, installs Claude Code and copies `claude/CLAUDE.md`
3. Creates symlinks for all `.symlink` files (existing regular files are backed up to `*.bak`)
4. Links the Konsole profile and makes it default (`scripts/konsole.sh`)
5. Sets up tmux (TPM), neovim (vim-plug) and zsh as default shell

## Key Configuration Files

### zsh Configuration
Kept intentionally minimal (no plugin manager):
- `zsh/zshenv.symlink` - Environment variables, sourced first by all scripts
- `zsh/zprofile.symlink` - Login shell PATH (`~/.local/bin`, `~/go/bin`)
- `zsh/zshrc.symlink` - Entry point that loads all `*.zsh` files
- `zsh/aliases.zsh` - Shell aliases
- `zsh/general.zsh` - Shell options and keybindings
- `zsh/history.zsh` - History settings
- `zsh/completion.zsh` - Completion
- `zsh/prompt.zsh` - Shell prompt configuration

### vim Configuration
- `vim/vimrc.symlink` - Entry point that sources all vim configs
- `vim/plugins.vim` - Plugin definitions
- `vim/general.vim` - General vim settings
- `vim/indentation.vim` - Indentation rules
- `vim/plugins/config.vim` - Plugin-specific configuration

### tmux Configuration
- `tmux/tmux.conf.symlink` - Entry point that sources all `*.conf` files
- `tmux/general.conf` - General tmux settings
- `tmux/panes.conf` - Pane navigation and management
- `tmux/windows.conf` - Window management
- `tmux/statusline.conf` - Status bar configuration
- `tmux/copy.conf` - Copy mode settings (clipboard via `wl-copy`)

### Konsole Configuration
- `konsole/Dotfiles.profile` - Konsole profile (font, color scheme), symlinked to `~/.local/share/konsole/` and set as `DefaultProfile` in `konsolerc`

### Claude Code Configuration
The global Claude instructions are stored in `claude/CLAUDE.md` and copied to `~/.claude/CLAUDE.md` by `scripts/manjaro-setup.sh`. This file contains general programming guidelines and is separate from this repository-specific documentation.

## Making Changes

### Adding New Configuration Files
1. Create file in appropriate directory (e.g., `zsh/newfeature.zsh`)
2. If it should be symlinked to home, name it `*.symlink`
3. Test the configuration loads correctly

### Modifying Existing Configurations
Due to the modular loading pattern, changes to any `.zsh`, `.vim`, or `.conf` file are automatically picked up on next shell/editor restart. No need to modify the main config files.

### Adding New Package Dependencies
Edit `scripts/manjaro-setup.sh`: repo packages go in the `pamac install` list, AUR packages in the `pamac build` list.
