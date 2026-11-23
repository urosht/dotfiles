#!/usr/bin/env bash
set -e

echo -e "\n=== Running Manjaro setup ==="

# --- AUR support ---
echo -e "\n=== Enabling AUR support in pamac ==="
if grep -q '^#EnableAUR' /etc/pamac.conf; then
	sudo sed -i 's/^#EnableAUR/EnableAUR/' /etc/pamac.conf
fi

# --- System update (before installing, to avoid partial upgrades) ---
echo -e "\n=== Updating system (repos + AUR) ==="
pamac update --aur --no-confirm

# --- Official repositories ---
echo -e "\n=== Installing repository packages ==="
pamac install --no-confirm \
	base-devel \
	zsh \
	zsh-autosuggestions \
	neovim \
	python-pynvim \
	tmux \
	wl-clipboard \
	bind \
	htop \
	jq \
	fastfetch \
	ttf-mononoki-nerd \
	python \
	python-pipx \
	go \
	kubectl \
	helm \
	aws-cli-v2 \
	docker \
	docker-compose \
	docker-buildx \
	postgresql-libs \
	dbeaver \
	vlc \
	vlc-plugin-ffmpeg

# --- AUR ---
echo -e "\n=== Building AUR packages ==="
pamac build --no-confirm \
	tfenv \
	visual-studio-code-bin \
	cursor-bin \
	postman-bin \
	notion-app-electron \
	todoist-appimage

# --- Docker ---
#echo -e "\n=== Enabling Docker ==="
#sudo systemctl enable --now docker.service
#if ! groups "$USER" | grep -qw docker; then
#	sudo usermod -aG docker "$USER"
#	echo "Added $USER to the docker group (log out and back in to apply)."
#fi
#

# --- Claude ---
echo -e "\n=== Setting up Claude Code ==="
if ! command -v claude &> /dev/null; then
	curl -fsSL https://claude.ai/install.sh | bash
fi
mkdir -p "$HOME/.claude"
if [ -f "$DOTFILES/claude/CLAUDE.md" ]; then
	cp "$DOTFILES/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
	echo "CLAUDE.md installed."
else
	echo "Warning: CLAUDE.md not found in dotfiles repository."
fi
