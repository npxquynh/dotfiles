# Load .profile, containing login, non-bash related initializations.
source ~/.profile

# Load .bashrc, containing non-login related bash initializations.
source ~/.bashrc

# Load .bashlocal, containing thing that are specific for each machine
if [ -f ~/.bash_local ]; then 
  source ~/.bash_local
fi

