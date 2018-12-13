##############
# General
##############
alias reloadrc='source ~/.bashrc'
alias editrc='vim ~/.bashrc'

if [ -f ~/.bash_aliases_local ]
then
  source ~/.bash_aliases_local
fi

# https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
# To manipulate dotfiles directory
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

###############
# Overload Yandex
###############
alias loadtest='docker run -v $(pwd):/var/loadtest -v $HOME/.ssh:/root/.ssh -it direvius/yandex-tank -c $(1) $(2)'

###############
# Bundler
###############
alias be='bundle exec'
alias bec='bundle exec rails c'
alias ber='bundle exec rspec'
alias bi='bundle install'

###############
# Docker
###############
alias dc='docker-compose'

###############
# Work - Distribusion
###############
alias W='cd ~/Work'

function bo () {
  source ~/Work/bosi_$1/.env;
  cd ~/Work/bosi_$1;
}

alias cv='cd ~/Job/CV/cv'
alias cl='cd ~/Job/CV/cl'

