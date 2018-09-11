# Filesystem
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lah'
alias e='exit'
alias mkcd='mkcd(){ mkdir -p "$1" && cd "$1" }'

# Network
alias myip='curl http://ipecho.net/plain; echo'
# Grep
alias grep='grep --color=auto'

# Tmux
alias ta='tmux new-session -A -s'
alias t='tmux'

# Docker
alias d='docker'
alias dc='docker-compose'
alias dm='docker-machine'
alias reboot_docker='dc stop && dc build --no-cache && dc up -d'
alias dt='docker logs -f --tail'

# Kubernetes
alias k='kubectl'
alias m='minikube'
alias watch='watch ' # So you can use watch with k8s :)
alias ksd='kubectl run -it --rm --restart=Never busybox --image=busybox sh'
alias ksc='kubectl config get-contexts'
alias ksu='kubectl config use-context'

# Git
alias g='git'
alias ga='git add'
alias gc='git commit'

# Maven
alias mci='mvn clean install'

# Vim
alias vim='nvim'
