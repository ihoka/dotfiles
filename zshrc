#!/usr/bin/env bash

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler git osx brew rake redis-cli node npm heroku zsh-navigation-tools vscode docker gem github aws)

source $ZSH/oh-my-zsh.sh

. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

source ~/.profile

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc

# Emacs mode for zle
bindkey -e

### Added by the Heroku Toolbelt
export PATH="$PATH:/usr/local/heroku/bin"

export PATH="$HOME/.yarn/bin:$PATH"

# Disable autocorrect
unsetopt correct_all

ulimit -S -n 2048

PERL_MB_OPT="--install_base \"/Users/ihoka/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/ihoka/perl5"; export PERL_MM_OPT;

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export DISABLE_SPRING=1

RPROMPT='[%?]'

source /Users/ihoka/.iterm2_shell_integration.zsh

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

eval "$(direnv hook zsh)"

export PATH="/usr/local/opt/openssl/bin:$PATH"

export MAVEN_OPTS="-Djavax.net.ssl.trustStore=$HOME/.m2/keystore.pks -Djavax.net.ssl.trustStorePassword=changeit"

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/ihoka/Projects/aissac/candidates/webstudio523-ember-invoice/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/ihoka/Projects/aissac/candidates/webstudio523-ember-invoice/node_modules/tabtab/.completions/electron-forge.zsh
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ihoka/.sdkman"
[[ -s "/Users/ihoka/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ihoka/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
