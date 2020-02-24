if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Initialize antigen
source /usr/local/share/antigen/antigen.zsh

# use oh-my-zsh
antigen use oh-my-zsh

# Plugins
antigen bundle git
antigen bundle brew
antigen bundle colored-man-pages
antigen bundle osx
antigen bundle kubectl
antigen bundle zdharma/history-search-multi-word

# zsh-users repo plugins
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
antigen theme romkatv/powerlevel10k

antigen apply

DISABLE_UNTRACKED_FILES_DIRTY="true"
ZSH_DISABLE_COMPFIX=true

# add locations to PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.userscripts"

# java
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_92.jdk/Contents/Home
export JAVA_HOME
export PATH=$PATH:$JAVA_HOME/bin

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
alias c='pygmentize -f terminal256 -O style=monokai -g'
alias gbpurge='git branch --merged | grep -v "\*" | grep -v "master" | grep -v "develop" | xargs -n 1 git branch -d'
alias dc="~/.userscripts/dc"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
