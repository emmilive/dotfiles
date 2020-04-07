# dotfiles
My dotfiles

## How to use

1. Clone or download this Repository
1. Copy the `.vimrc` and/or `.zshrc` files to your home-directory
1. Install Antigen (see https://github.com/zsh-users/antigen/wiki/Installation)
    - On macOS run `brew install antigen`
    - On Debian Linux run `apt-get install zsh-antigen` **or using the installer**
    - `curl -L git.io/antigen > antigen.zsh`
1. Install vundle
    - `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
    - Install Vundle and plugins in vim `:PluginInstall` or commandline `vim +PluginInstall +qall`
1. Enjoy

## Trouleshooting

Problem
```
err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)
```

Put this line in your ~/.zshrc or ~/.bashrc
```
[[ "$TERM" == "xterm" ]] && export TERM=xterm-256color
```
