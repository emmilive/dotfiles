# dotfiles
My dotfiles

## How to use

1. Clone or download this Repository
1. Copy the `.zshrc` and/or `ghostty/config` files to your home-directory
1. Install all dependencies
    - On macOS run `brew install ghostty zinit starship`
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
