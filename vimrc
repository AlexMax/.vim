set nocompatible

" Text editing
set backspace=indent,eol,start
set shiftwidth=4
set tabstop=4

" Interface
set hidden
set hlsearch
set nowrap
set ruler
set wildmenu
set wildmode=longest:full,full

" Color scheme
set background=dark
syntax enable
colorscheme sunburst

" Commands that shell out tend to assume a bourne shell
set shell=sh

" vim-plug
call plug#begin('~/.vim/bundle')

Plug 'fatih/vim-go'
Plug 'mustache/vim-mustache-handlebars'
Plug 'evidens/vim-twig'
Plug 'Shutnik/jshint2.vim'

call plug#end()

" Apply twig templates to swig files
au BufReadPost *.swig set syntax=twig
