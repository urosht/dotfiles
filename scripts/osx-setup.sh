#!/usr/bin/env zsh

set -e

echo -e "\\n=== Running OSX setup ==="

echo -e "\\nMake sure you have Homebrew installed..."

echo -e "\\n=== Installing Homebrew packages ==="
brew install \
	jq \
	kubectl \
	helm \
	tfenv \
	htop \
	neovim \
	tmux \
	openjdk@21 \
	neofetch \
	python@3.14 \
	reattach-to-user-namespace \
	caffeine \
	dbeaver-community \
	awscli \
	watch \
	yarn \
	maven \
	groovysdk \
	postman \
	k9s \
	docker \
	colima \
	tldr \
	golang \
	pipx \
	libpq \

brew install --cask \
	visual-studio-code \
	claude \
	cursor \
	brave-browser \
	todoist-app \
	notion \
	rescuetime \
	claude-code \


echo -e "\\n=== Installing Mononoki Nerd Font via Homebrew ==="
brew install --cask font-mononoki-nerd-font

echo -e "\\n=== Installing how2 ==="
brew trust how2terminal/how2
brew tap how2terminal/how2 && brew install how2

echo -e "\n=== Symlinking Java 21 Homebrew installation ==="
sudo ln -sfn $(brew --prefix)/opt/openjdk@21/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-21.jdk

echo -e "\\n=== Setting up CLAUDE ==="
mkdir -p "$HOME/.claude"
if [ -f "$DOTFILES/claude/CLAUDE.md" ]; then
	echo "Copying CLAUDE.md to home directory..."
	cp "$DOTFILES/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
	echo "CLAUDE.md successfully installed."
else
	echo "Warning: CLAUDE.md not found in dotfiles repository."
fi
