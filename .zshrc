# brew config
export PATH=$HOME/homebrew/bin:$PATH
export PATH="/Users/j-emrich/homebrew/sbin:$PATH"
export HOMEBREW_CASK_OPTS="--appdir=\"~/Applications/brew\""

eval "$(starship init zsh)"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# OMZ-Snippets
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit snippet OMZ::lib/directories.zsh
zinit snippet OMZL::theme-and-appearance.zsh
zinit snippet OMZP::ssh-agent

# Moderne Plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zdharma-continuum/history-search-multi-word

# jump between words with option + <-/->
autoload -U select-word-style
select-word-style bash

# use visual-studio-code for most editor actions
export EDITOR='code --wait'

# some aliases
alias zshconfig="vi ~/.zshrc"
alias c='pygmentize -f terminal256 -O style=native -g'
alias gbpurge='git branch --merged | grep -v "\*" | grep -v "master" | grep -v "develop" | xargs -n 1 git branch -d'
alias dc="~/.userscripts/dc"
alias dm=". ~/.userscripts/dm"
alias link8.1="brew unlink php@8.2 && brew link php@8.1 --force --overwrite"

# add locations to PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.userscripts"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.local/bin:$PATH"
