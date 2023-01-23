# Filesystem
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -lah'
alias e='exit'

# Network
alias myip='curl ifconfig.io'

# Grep
alias grep='grep --color=auto'

# Tmux
alias ta='tmux new-session -A -s'
alias t='tmux'

# Docker
alias d='docker'
alias dt='docker logs -f --tail'

# Terraform
alias tf='terraform'

# Kubernetes
alias k='kubectl'
alias m='minikube'
alias watch='watch ' # So you can use watch with k8s :)
alias kdebug='kubectl run -it --rm --tty --restart=Never busybox-debug --image=radial/busyboxplus:curl -- /bin/ sh'
alias kcg='kubectl config get-contexts'
alias kcu='kubectl config use-context'

# Git
alias g='git'
alias ga='git add'
alias gc='git commit'

# Maven
alias mci='mvn clean install'

# Vim
alias vim='nvim'
