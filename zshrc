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
plugins=(bundler git macos brew rake redis-cli node npm heroku zsh-navigation-tools vscode docker gem github aws rbenv ruby yarn npm)

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

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export DISABLE_SPRING=1

RPROMPT='[%?]'

source /Users/ihoka/.iterm2_shell_integration.zsh

autoload -U add-zsh-hook

eval "$(direnv hook zsh)"

export PATH="/usr/local/opt/openssl/bin:$PATH"

export MAVEN_OPTS="-Djavax.net.ssl.trustStore=$HOME/.m2/keystore.pks -Djavax.net.ssl.trustStorePassword=nothsnoths"

export SDKMAN_DIR="/Users/ihoka/.sdkman"
[[ -s "/Users/ihoka/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ihoka/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
eval "$(starship init zsh)"

eval "$(saml2aws --completion-script-zsh)"
