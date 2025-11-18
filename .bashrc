# Add below line to ~/.bashrc and run source ~./bashrc
# . ~/dev-manual/.bashrc

# if ! [ -f ~/dev-manual/.bashrc_more ]; then
if [ -f ~/dev-manual/.bashrc_more ]; then
  . ~/dev-manual/.bashrc_more
fi

if [ -f ~/.git-prompt.sh ]; then
    . ~/.git-prompt.sh
fi

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
# if __git_ps1: command not found => install below
# curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
# source ~/.git-prompt.sh
export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '
alias gitprompt='curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh'

# git pull/ push
alias gitd='git pull origin develop'
alias gitm='git pull origin master'
alias gitm1='git pull origin main'
alias gitpd='git push origin develop'
alias gitpm='git push origin master'
alias gitpm1='git push origin main'

alias gitcp='git config --get remote.origin.url'
alias gitbr='git rev-parse --abbrev-ref HEAD'
alias gith='git rev-parse --short HEAD'
alias gitstore='git config --global credential.helper "store"'
alias gitDefaultBranch='git config --global init.defaultBranch master'
alias gitDefaultRebase='git config --global pull.rebase true'

# you should copy below two lines to file .bashrc_more, specify your info and uncomment
# alias gitun='git config user.name "<Your Name>"'
# alias gitue='git config user.email "<Your Email>"'
# alias gitbrdef='git config --global init.defaultBranch master'

alias lsah='ls -lah'

# shutdown/ restart
alias shn='sudo shutdown -h now'
alias rsn='sudo reboot'

# popular tools
alias k='kubectl'
alias d='docker'
alias h='helm'

# tail logs, filter by labels
# alias logs_traefik='k -n dns logs -l app.kubernetes.io/name=traefik --tail 100'
# alias logs_cert='k -n dns logs -l app.kubernetes.io/name=cert-manager --tail 100'

# open dev-manual
alias cdev='code ~/dev-manual'

alias code='code --ozone-platform=x11'

export GOPATH=~/go
# export PATH=$GOPATH/bin:$PATH
# export GOEXPERIMENT=jsonv2

export FLUTTER_HOME=~/flutter
export PUB_CACHE=$FLUTTER_HOME/.pub-cache

export DENO_INSTALL=~/.deno

alias npmsetroot='npm config set prefix ~/node'
export NODE_HOME=~/node
# export PATH=~/node/bin:$PATH

alias mvnsettings='code ~/maven/conf/settings.xml'

export JAVA_HOME=/usr/local/java
# export PATH=$JAVA_HOME/bin:$PATH

# export MAVEN_HOME=$LOCAL_INFRA/maven-ubuntu/apache-maven-3.9.7
export MAVEN_HOME=~/maven
# export PATH=$MAVEN_HOME/bin:$PATH

export PATH="$GOPATH/bin:/usr/local/go/bin:$PUB_CACHE/bin:$FLUTTER_HOME/bin:$DENO_INSTALL/bin:$NODE_HOME/bin:/usr/local/node/bin:$MAVEN_HOME/bin:/usr/local/java/bin:$PATH"
