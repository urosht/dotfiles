# Filesystem
alias ls='ls -G'
alias ll='ls -l'
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
alias kdebug='kubectl run -it --rm --restart=Never busybox --image=busybox sh'
alias kcg='kubectl config get-contexts'
alias kcu='kubectl config use-context'

# Git
alias g='git'
alias ga='git add'
alias gc='git commit'

alias jqp='jq -R -r ". as $line | try fromjson catch $line"'

# Maven
alias mci='mvn clean install'

# Vim
alias vim='nvim'
