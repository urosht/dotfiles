# Filesystem
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -la"
alias e="exit"

# Grep
alias grep="grep --color=auto"

# Tmux
alias ta="tmux new-session -A -s"
alias t="tmux"

# Docker
alias d="docker"
alias dc="docker-compose"
alias dm="docker-machine"
alias reboot_docker="dc stop && dc build --no-cache && dc up -d"
alias dt="docker logs -f --tail"

# Git
alias g="git"
alias ga="git add"
alias gc="git commit"
