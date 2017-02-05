set nocompatible

" source plugin file
source ~/plugins.vimrc

colorscheme xoria256

"-------------General Settings--------------"

set backspace=indent,eol,start              "Make backspace behave like every other editor.
let mapleader = ',' 					    "The default leader is \, but a comma is much better.
set number								    "Let's activate line numbers.
set linespace=7   						    "Macvim-specific line-height.

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

set guifont=roboto_mono_for_powerline:h14
set guioptions-=T                           " Removes top toolbar
set guioptions-=r                           " Removes right hand scroll bar
set go-=L                                   " Removes left hand scroll bar

syntax enable


" Show always mode 
set showmode

" No Bell!
set visualbell                              " don't beep
set noerrorbells                            " don't beep

"-------------Search--------------"
set hlsearch
set incsearch

"-------------Mappings--------------"

" NERDTree with Cmd+1 (like phpstorm)
map <D-1> :NERDTreeToggle<cr>

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

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
