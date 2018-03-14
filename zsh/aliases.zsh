# Filesystem
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -la"
alias e="exit"
alias mkcd='mkcd(){ mkdir -p "$1" && cd "$1" }'

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

# Kubernetes
alias k="kubectl"
alias m="minikube"
alias watch="watch " # So you can do use watch with alias k :)

# Git
alias g="git"
alias ga="git add"
alias gc="git commit"

# Maven
alias mci="mvn clean install"

