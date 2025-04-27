# Add below line to ~/.bashrc and run source ~./bashrc
# . ~/dev-manual/.bashrc

. .bashrc_more

# edit .bashrc
alias sob='source ~/.bashrc'
alias vib='vim ~/.bashrc'
alias vibs='vim ~/dev-manual/.bashrc'
alias vih='sudo vim /etc/hosts'
alias viv='vim ~/.vimrc'

# copy/ paste
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# git ps1
export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '

# git pull/ push
alias gitd='git pull origin develop'
alias gitm='git pull origin master'
alias gitpd='git push origin develop'
alias gitpm='git push origin master'

# shutdown/ restart
alias shn='sudo shutdown -h now'
alias rsn='sudo reboot'

# popular tools
alias k='kubectl'
alias d='docker'
alias h='helm'
