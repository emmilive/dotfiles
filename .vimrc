set nocompatible
filetype off                                " required for vundle

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'               " Manage Vundle
Plugin 'vim-airline/vim-airline'            " nice status bar at the bottom
Plugin 'vim-airline/vim-airline-themes'     " themes for airline
call vundle#end()            		    " required
filetype plugin indent on                   " required

let g:airline_theme='minimalist'            " AirlineTheme

set backspace=indent,eol,start              " Make backspace behave like every other editor.
let mapleader = ',' 			    " The default leader is \, but a comma is much better.
set number				    " Let's activate line numbers.
set linespace=7				    " Macvim-specific line-height.

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

set guifont=roboto_mono_for_powerline:h14
set guioptions-=T                           " Removes top toolbar
set guioptions-=r                           " Removes right hand scroll bar
set go-=L                                   " Removes left hand scroll bar

syntax enable

set laststatus=2                            " Always show status line
set number                                  " Enable line numbers.
set showmode                                " Show the current mode.
set showmatch                               " show matching parenthesis
set splitbelow splitright                   " how to split new windows.
set title                                   " Show the filename in the window title bar.

" use relative line number by default
if exists('+relativenumber')
  set relativenumber
endif

" No Bell!
set visualbell                              " don't beep
set noerrorbells                            " don't beep

"-------------Search--------------"
set hlsearch
set incsearch

"-------------Mappings--------------"

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Easy escaping to normal model
imap jj <esc>

"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
