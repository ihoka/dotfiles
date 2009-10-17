. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc
if [ -f ~/.rvm/bin/rvm ] ; then source ~/.rvm/bin/rvm ; fi
if [ -f ~/.rvm/current ] ; then source ~/.rvm/current ; fi
