if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Initialize antigen
source /usr/local/share/antigen/antigen.zsh

# Start tmux when zsh launches
export ZSH_TMUX_AUTOSTART=true

# use oh-my-zsh
antigen use oh-my-zsh

# Plugins
antigen bundle brew
antigen bundle colored-man-pages
antigen bundle docker
antigen bundle git
antigen bundle kubectl
antigen bundle osx
antigen bundle ssh-agent
antigen bundle tmux

# plugins from other repositories
antigen bundle zdharma/history-search-multi-word
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
# antigen theme ys
antigen theme romkatv/powerlevel10k

antigen apply

export DISABLE_UNTRACKED_FILES_DIRTY=true
export ZSH_DISABLE_COMPFIX=true

# add locations to PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.userscripts"

# nvm config
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# halt all vagrant machines globally
vagrant() {
  if [[ $@ == "halt all" ]]; then
    command vagrant global-status | grep running | colrm 8 | xargs -L 1 -t vagrant halt
  else
    command vagrant "$@"
  fi
}

# configuring my docker-machine

if [ -z "$DOCKER_HOST" ]; then
 eval $(docker-machine env default)
fi

# some aliases
alias zshconfig="vi ~/.zshrc"
alias c='pygmentize -f terminal256 -O style=native -g'
alias gbpurge='git branch --merged | grep -v "\*" | grep -v "master" | grep -v "develop" | xargs -n 1 git branch -d'
alias dc="~/.userscripts/dc"
alias dm=". ~/.userscripts/dm"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
