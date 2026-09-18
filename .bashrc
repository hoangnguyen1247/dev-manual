# Add below line to ~/.bashrc and run source ~./bashrc
# . /app/dev-infra/dev-manual/.bashrc

# if ! [ -f ~/dev-manual/.bashrc_more ]; then
if [ -f ~/dev-manual/.bashrc_more ]; then
  . ~/dev-manual/.bashrc_more
fi

if [ -f /app/dev-infra/dev-manual/.bashrc_more ]; then
  . /app/dev-infra/dev-manual/.bashrc_more
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
alias gitph='git push -u origin HEAD'

alias gitcp='git config --get remote.origin.url'
alias gitbr='git rev-parse --abbrev-ref HEAD'
alias gith='git rev-parse --short HEAD'
alias gitstore='git config --global credential.helper "store"'
alias gitDefaultBranch='git config --global init.defaultBranch master'
alias gitDefaultRebase='git config --global pull.rebase true'
alias gitDefaultFf='git config --global pull.ff only'
alias gitDefaultFfCommit='git config --global pull.ff true'
alias gitLatestTag='git tag --list --sort=-creatordate | head -n 1'
alias gitTags='git tag --list --sort=-creatordate'
alias gitLatestHash='git rev-parse --short HEAD'
alias gitLogs='git log --oneline'
alias gitCommitters='git shortlog -s -n -e'
alias gitUser='git config user.name'
alias gitEmail='git config user.email'

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

# read data from file fclip_text.txt and export data to var t. access at $t
# alias read1='read -r t < ~/.local/share/fclip/fclip_text.txt'

alias code='code --ozone-platform=x11'

alias cdev='code /app/dev-infra/dev-manual'

# Golang
export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH
# export GOEXPERIMENT=jsonv2
export GOROOT=/usr/local/go

# Flutter
export FLUTTER_HOME=~/flutter
export PUB_CACHE=~/.pub-cache
export PATH=$FLUTTER_HOME/bin:$PATH

# export DENO_INSTALL=~/.deno

# alias npmsetroot='npm config set prefix ~/node'
export NODE_HOME=/usr/local/node
# # export PATH=~/node/bin:$PATH

# alias mvnsettings='code ~/maven/conf/settings.xml'

# export JAVA_HOME=/usr/local/java
# # export PATH=$JAVA_HOME/bin:$PATH

# # export MAVEN_HOME=$LOCAL_INFRA/maven-ubuntu/apache-maven-3.9.7
# export MAVEN_HOME=~/maven
# # export PATH=$MAVEN_HOME/bin:$PATH

# export CHROME_EXECUTABLE=/usr/bin/chromium-browser # apt
export CHROME_EXECUTABLE=/snap/bin/chromium # snap

export PATH=$GOPATH/bin/:$GOROOT/bin:$NODE_HOME/bin:$PATH
