# Filesystem
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'

# Grep
alias grep='grep --color=auto'

# Tmux
alias ta='tmux new-session -A -s'
alias t='ta main'

# Docker
alias d="docker"
alias dc="docker-compose"
alias dm="docker-machine"
alias reboot_docker="dc stop && dc build --no-cache && dc up -d"
alias df="docker logs -f"
alias dt="docker logs -f --tail"

