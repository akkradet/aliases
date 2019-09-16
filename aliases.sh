# START CUSTOM ALIASES


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
alias service='sudo service'
alias start='sudo systemctl start'
alias reload='sudo systemctl reload'
alias restart='sudo systemctl restart'
alias stop='sudo systemctl stop'

# Miscellaneous aliases
alias root='sudo -i'
alias fuck='sudo'
alias fucking='sudo'
alias c='clear'

# END CUSTOM ALIASES