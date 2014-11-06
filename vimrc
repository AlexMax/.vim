set nocompatible

" Text editing
set backspace=indent,eol,start
set shiftwidth=4
set tabstop=4

" Interface
set guifont=DejaVu_Sans_Mono:h12
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

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'fatih/vim-go'
Plug 'mustache/vim-mustache-handlebars'
Plug 'evidens/vim-twig'
Plug 'Shutnik/jshint2.vim'

call plug#end()

" NERDTree bind to F2
map <F2> :NERDTreeToggle<CR>

" Apply twig templates to swig files
au BufReadPost *.swig set syntax=twig

" Useful for developing color themes
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
			\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
			\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
