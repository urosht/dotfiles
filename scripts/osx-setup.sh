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
	openjdk@17 \
	iterm2 \
	neofetch \
	python@3.10 \
	authy \
	reattach-to-user-namespace \
	caffeine \
	dbeaver-community \
	awscli \
	Azure/kubelogin/kubelogin \
	watch \
	yarn \
	nvm \
	maven \
	groovysdk \
	postman \
	k9s \
	docker \
	colima \
	tldr \
	golang \



echo -e "\\n=== Installing Mononoki Nerd Font via Homebrew ==="
brew tap homebrew/cask-fonts && brew install --cask font-mononoki-nerd-font

echo -e "\\n=== Installing how2 ==="
brew tap how2terminal/how2 && brew install how2

echo -e "\n=== Symlinking Java 17 Homebrew installation ==="
sudo ln -sfn $(brew --prefix)/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-17.jdk
