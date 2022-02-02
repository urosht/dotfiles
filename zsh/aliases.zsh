# Filesystem
alias ls='ls -G'
alias ll='ls -l'
alias la='ls -lah'
alias e='exit'

# Network
alias myip='curl ifconfig.io'

# Grep
alias grep='grep --color=auto'

# cat
alias ccat='cat'
alias cat='bat'

# Tmux
alias ta='tmux new-session -A -s'
alias t='tmux'

# Nerdctl / Docker
alias d='nerdctl'
alias dc='docker-compose'
alias dm='docker-machine'
alias reboot_docker='dc stop && dc build --no-cache && dc up -d'
alias dt='nerdctl logs -f --tail'

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
