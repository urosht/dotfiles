# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository that manages configuration files for zsh, vim, tmux, git, and neofetch across multiple platforms (macOS, Arch Linux, Ubuntu). The repository uses a symlink-based architecture where files with `.symlink` extensions are automatically linked to `~/.filename` during setup.

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
1. Detects OS (macOS, Arch, Ubuntu)
2. Runs OS-specific package installation (`scripts/{osx,arch,ubuntu}-setup.sh`)
3. Creates symlinks for all `.symlink` files
4. Sets up tool-specific configurations (neofetch, tmux, vim, zsh)

### Manual Post-Installation Steps
After setup.sh completes:
```bash
pipx install pynvim
```

### Platform-Specific Package Lists
- macOS packages are defined in `scripts/osx-setup.sh` (Homebrew)
- Arch packages in `scripts/arch-setup.sh` (pacman)
- Ubuntu packages in `scripts/ubuntu-setup.sh` (apt)

## Key Configuration Files

### zsh Configuration
- `zsh/zshenv.symlink` - Environment variables, sourced first by all scripts
- `zsh/zshrc.symlink` - Entry point that loads all `*.zsh` files
- `zsh/aliases.zsh` - Shell aliases
- `zsh/functions.zsh` - Custom shell functions
- `zsh/plugins.zsh` - Plugin management
- `zsh/prompt.zsh` - Shell prompt configuration
- `zsh/zprofile.symlink` - Login shell configuration

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
- `tmux/copy.conf` - Copy mode settings

### Alacritty Configuration
- `alacritty/alacritty.toml.symlink` - Terminal emulator configuration with Mononoki Nerd Font
- Manual symlink required: `ln -s ~/dotfiles/alacritty/alacritty.toml.symlink ~/.config/alacritty/alacritty.toml`
- Note: Requires `~/.config/alacritty/` directory to exist first

### Claude Code Configuration
The global Claude instructions are stored in `claude/CLAUDE.md` and copied to `~/.claude/CLAUDE.md` during macOS setup. This file contains general programming guidelines and is separate from this repository-specific documentation.

## Making Changes

### Adding New Configuration Files
1. Create file in appropriate directory (e.g., `zsh/newfeature.zsh`)
2. If it should be symlinked to home, name it `*.symlink`
3. Test the configuration loads correctly

### Modifying Existing Configurations
Due to the modular loading pattern, changes to any `.zsh`, `.vim`, or `.conf` file are automatically picked up on next shell/editor restart. No need to modify the main config files.

### Adding New Package Dependencies
Edit the appropriate OS setup script:
- `scripts/osx-setup.sh` for macOS (Homebrew)
- `scripts/arch-setup.sh` for Arch Linux
- `scripts/ubuntu-setup.sh` for Ubuntu
