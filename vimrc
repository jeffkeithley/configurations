"""
"
" Jeff's .vimrc (adapted from Kyle's .vimrc)
"
"""

" Begin Vundle
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" End Vundle

colo desert "color scheme
"syntax on
set number
set mouse=a
set showmatch
set ruler
set clipboard=unnamed

" sets up python style by default MANUAL
" set smartindent tabstop=4 shiftwidth=4 expandtab softtabstop=4

set backspace=2

" Specify where splits occur
set splitbelow
set splitright

" Split navigations - ^Ctrl + <HJKL>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview = 1

" PEP 8 indentations
au BufNewFile,BufRead *.py
    \ set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

Plugin 'vim-scripts/indentpython.vim'

" UTF-8 support
set encoding=utf-8

" Auto-Complete
Bundle 'Valloric/YouCompleteMe'
" highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

" Syntax highlighting
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
let python_highlight_all=1
syntax on

" File browsing
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" Integrated Git
Plugin 'tpope/vim-fugitive'
