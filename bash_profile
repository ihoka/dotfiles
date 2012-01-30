source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi


[[ -s "/Volumes/Users/piki/.rvm/scripts/rvm" ]] && source "/Volumes/Users/piki/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
