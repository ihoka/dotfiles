#!/usr/bin/env bash
#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dotfiles="code ~/.dotfiles"

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

FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(asdf git macos brew rake redis-cli node npm zsh-navigation-tools vscode docker gem ruby yarn)
plugins=(asdf git fzf vscode docker gem ruby yarn)

source $ZSH/oh-my-zsh.sh

. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

source ~/.profile

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc

# Emacs mode for zle
bindkey -e

# Disable autocorrect
unsetopt correct_all

ulimit -S -n 2048

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export DISABLE_SPRING=1

RPROMPT='[%?]'

autoload -U add-zsh-hook

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

if type rbenv &> /dev/null; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

if type direnv &> /dev/null; then
  eval "$(direnv hook zsh)"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PYENV_ROOT="$HOME/.pyenv"
if [[ -d "$PYENV_ROOT" ]]; then
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

export PATH="./bin:$HOME/bin:$PATH"
