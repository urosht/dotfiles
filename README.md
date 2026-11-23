# dotfiles
**Manjaro (KDE / Wayland)** branch.

Each OS lives on its own branch:
- `manjaro` — this branch
- `osx` — macOS (Homebrew)

# Getting Started
1. Download this repo and check out the Manjaro branch
```bash
git clone -b manjaro https://github.com/urosht/dotfiles.git ~/dotfiles
```

2. Run the setup
```bash
cd ~/dotfiles && ./setup.sh
```
Packages are installed with `pamac` (official repos + AUR). The script enables AUR support in
`/etc/pamac.conf` and enables Docker. Log out and back in afterwards
so the docker group and default shell take effect.

3. Konsole uses the `Dotfiles` profile (`konsole/Dotfiles.profile`, Mononoki Nerd Font Mono 11), set as default by `scripts/konsole.sh`.

## TODO
- Add default AWS profile to statusline (none when it's not configured)
- Add defaults for TF version and K8s context (none and none)
- Add icons for k8s and tf instead of text in the status bar
- Add keys to zoom panes in tmux
- Add keys to resize panes in tmux
- update master branch to only have readme with "my dotfiles" 