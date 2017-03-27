# vimrc
My .vimrc, inspired by JeffreyWay

## How to use

1. Clone or download this Repository
2. Copy the `.vimrc` and `plugins.vimrc` files to your home-directory
3. `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
4. run `vim +PluginInstall +qall` to install plugins
5. Enjoy

## Trouleshooting

Problem
```
err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)
```

Put this line in your ~/.zshrc or ~/.bashrc
```
[[ "$TERM" == "xterm" ]] && export TERM=xterm-256color
```
