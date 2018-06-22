# Enable programmable completion feature
if [ -d $(brew --prefix)/etc/bash_completion.d ]; then
  for f in $(brew --prefix)/etc/bash_completion.d/*; do
    [ -f "$f" ] && source "$f"
  done
fi

# Set the PS1 prompt

export PS1="\[\033[31m\]\u \[\033[32m\]\w\[\033[33m\]\$(__git_ps1)\[\033[00m\] \n $ "

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Add environment variables.
if [ -f ~/.bash_env ]; then
    source ~/.bash_env
fi

# Add identity always for ssh
ssh-add ~/.ssh/id_rsa

# Prevent Ctrl+D from closing shell. Now you have to type 42 times
export IGNOREEOF=42

# Set the default editor to vim.
export EDITOR=vim

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend

# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND=`history -a`

# Set the iTerm tab title to the current directory
source ~/dotfiles/current-dir-in-iterm-tab-title.sh

# Load rbenv automatically
eval "$(rbenv init -)"

# -----------------
# Git Aliases
# -----------------
# Git prompt config
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"

function g() {
  local cmd=${1-s}
  shift
  git $cmd $@
}

# Set up git command completion for g
__git_complete g __git_main

# Git log find by commit message
function glf() { git log --all --grep="$1"; }
