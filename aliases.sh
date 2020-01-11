# START CUSTOM ALIASES
# Author: akkradet  
# Email: akkradet7@gmail.com.com

# Directory aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias www='clear; cd /var/www/html/; ls'
alias md='mkdir -p'
alias rd='rmdir'
alias ls='ls -hF --color=auto --group-directories-first'
alias la='ls -hFA --color=auto --group-directories-first'
alias ll='ls -hFAl --color=auto --group-directories-first'

alias sb='source ~/.bashrc'
alias s='source'

# ------------------------------------
# Docker alias and function
# ------------------------------------
alias d='docker'
alias dm='docker image'
alias dms='docker images'
# Get latest container ID
alias dl="docker ps -l -q"
# Get container process
alias dps="docker ps"
# Get process included stop container
alias dpsa="docker ps -a"
# Get images
alias di="docker images"
# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"
# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"
# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"
# Stop all containers
dstop() { docker stop $(docker ps -a -q); }
# Remove all containers
drm() { docker rm $(docker ps -a -q); }
# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
# Remove all images
dri() { docker rmi $(docker images -q); }
# Dockerfile build, e.g., $dbu tcnksm/test 
dbu() { docker build -t=$1 .; }
# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
# Bash into running container
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Program aliases
alias n='nano'
alias sn='sudo nano'
alias m='micro'
alias sm='sudo micro'
alias t='touch'
alias st='sudo touch'
alias targz='tar -zcvf'
alias untargz='tar -zxvf'
alias wget='wget -c'
alias ping='ping -c 5'
alias top='htop'

# Git aliases
alias add='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias pull='git pull'
alias push='git push'
alias reset='git reset'
alias status='git status'

# System aliases
alias yum='yum -y'
alias sc='systemctl'
alias scd='sc disable'
alias sce='sc enable'
alias scr='sc restart'
alias scs='sc status'
alias scx='sc stop'

# Miscellaneous aliases
alias root='sudo -i'
alias fuck='sudo'
alias fucking='sudo'
alias c='clear'
alias x='exit'

# END CUSTOM ALIASES
