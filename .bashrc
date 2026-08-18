# Add below line to ~/.bashrc and run source ~./bashrc
# . ~/dev-manual/.bashrc

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
alias gitun='git config user.name "Hoàng Ng."'
alias gitue='git config user.email "hoangnguyen1247@gmail.com"'
alias gitgun='git config --global user.name "Hoàng Ng."'
alias gitgue='git config --global user.email "hoangnguyen1247@gmail.com"'

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
alias read1='read -r t < ~/.local/share/fclip/fclip_text.txt'

# tail logs, filter by labels
# alias logs_traefik='k -n dns logs -l app.kubernetes.io/name=traefik --tail 100'
# alias logs_cert='k -n dns logs -l app.kubernetes.io/name=cert-manager --tail 100'

# open dev-manual
alias cdev='code /app/dev-infra/dev-manual'
alias cgotools='code /app/dev-infra/dev-go-tools'
alias ccerts='code /app/dev-infra/dev-cert-tools'
alias cinfra='code /app/dev-infra/dev-local-infra'
alias ck3d='code /app/dev-infra/dev-local-k3d-infra'
alias ck3dcerts='code /app/dev-infra/dev-cert-k3d-tools'
alias credis='code /app/dev-infra/dev-local-infra/compose-infra/rediscluster-tls'

alias gredis='cd /app/dev-infra/dev-local-infra/compose-infra/rediscluster-tls'
alias gvalkey='cd /app/dev-infra/dev-local-infra/compose-infra/valkeycluster-tls'

alias code='code --ozone-platform=x11'

# export GOPATH=~/go
# # export PATH=$GOPATH/bin:$PATH
# # export GOEXPERIMENT=jsonv2

# export FLUTTER_HOME=~/flutter
# export PUB_CACHE=~/.pub-cache

# export DENO_INSTALL=~/.deno

# alias npmsetroot='npm config set prefix ~/node'
# export NODE_HOME=~/node
# # export PATH=~/node/bin:$PATH

# alias mvnsettings='code ~/maven/conf/settings.xml'

# export JAVA_HOME=/usr/local/java
# # export PATH=$JAVA_HOME/bin:$PATH

# # export MAVEN_HOME=$LOCAL_INFRA/maven-ubuntu/apache-maven-3.9.7
# export MAVEN_HOME=~/maven
# # export PATH=$MAVEN_HOME/bin:$PATH

# export PATH="$PATH:$GOPATH/bin:/usr/local/go/bin:$PUB_CACHE/bin:$FLUTTER_HOME/bin:$DENO_INSTALL/bin:$NODE_HOME/bin:/usr/local/node/bin:$MAVEN_HOME/bin:/usr/local/java/bin"

alias logk_traefik='k -n dns logs -l app.kubernetes.io/name=traefik --tail 100'
alias logk_cert='k -n dns logs -l app.kubernetes.io/name=cert-manager --tail 100'
alias logk_redis='k -n data logs -l app.kubernetes.io/name=redis-cluster --tail 100'

alias logk_pim='k -n app logs -l app=pm-identity-management --tail 100'
alias logk_pnh='k -n app logs -l app=pm-notification-hub --tail 100'
alias logk_pws='k -n app logs -l app=pm-web-service --tail 100'

alias logk_psa='k -n app logs -l app=pm-stock-agent --tail 100'
alias logk_pst='k -n app logs -l app=pm-stock-trader --tail 100'
alias logk_psbo='k -n app logs -l app=pm-stock-back-office --tail 100'
alias logk_psws='k -n app logs -l app=pm-stock-web-service --tail 100'

alias logk_pcrmcs='k -n app logs -l app=pm-crm-core-system --tail 100'
alias logk_pmmscs='k -n app logs -l app=pm-mms-core-system --tail 100'
alias logk_phrmcs='k -n app logs -l app=pm-hrm-core-system --tail 100'
alias logk_psocs='k -n app logs -l app=pm-so-core-system --tail 100'
alias logk_pmbo='k -n app logs -l app=pm-market-back-office --tail 100'
alias logk_pmws='k -n app logs -l app=pm-market-web-service --tail 100'
alias logk_pmoa='k -n app logs -l app=pm-market-operation-app --tail 100'

alias logk_pcbss='k -n app logs -l app=pm-cbs-statement --tail 100'

alias logd_traefik='d logs traefik --tail 100'
alias logd_postgres='d logs postgres-tls --tail 100'
alias logd_redis='d logs rediscluster-node-1 --tail 100'
alias logd_valkey='d logs valkeycluster-tls-1 --tail 100'
alias logd_etcd='d logs etcd1 --tail 100'

alias logd_pim='d logs pim --tail 100'

alias logd_pcrmcs='d logs pcrmcs --tail 100'
alias logd_pmmscs='d logs pmmscs --tail 100'
alias logd_psocs='d logs psocs --tail 100'
alias logd_pmws='d logs pmws --tail 100'
alias logd_pmbo='d logs pmbo --tail 100'
alias logd_pmoa='d logs pmoa --tail 100'

alias logd_pcbss='d logs pcbss --tail 100'

alias ubtg='sshpass -p "0" ssh develop@localhost -p 2222'
alias ubtn='sshpass -p "0" ssh develop@localhost -p 2223'
alias ubtf='sshpass -p "0" ssh develop@localhost -p 2224'
alias ubtj='sshpass -p "0" ssh develop@localhost -p 2225'
alias ubtd='sshpass -p "0" ssh develop@localhost -p 2226'
alias ubtp='sshpass -p "0" ssh develop@localhost -p 2227'
alias ubtfd='sshpass -p "0" ssh develop@localhost -p 2228'
alias ubtdb='sshpass -p "0" ssh develop@localhost -p 2229'
alias ubtfa='sshpass -p "0" ssh develop@localhost -p 2230'
alias ubta='sshpass -p "0" ssh develop@localhost -p 2231'
alias sshp='sshpass -p "0"'

alias clearh=''
alias clearhc='cat /dev/null > ~/.bash_history'

export XDG_DOCUMENTS_DIR=~/Documents
