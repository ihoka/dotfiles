. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# rvm-install added line:
if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

source /Volumes/Users/piki/.profile

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc
