set nocompatible
filetype indent plugin on

" Text editing
set backspace=indent,eol,start
set cino=:0 " No indent for case:/default:
set formatoptions=tcqj
set shiftwidth=4
set tabstop=4

" Interface
set display=lastline
set fillchars=vert:│
set guifont=Source_Code_Pro:h12
"set guifont=DejaVu_Sans_Mono:h12
set hidden
set hlsearch
set incsearch
if has("patch-7.4.710")
	set listchars=tab:»\ ,eol:¬,space:·
else
	set listchars=tab:»\ ,eol:¬
endif
set nowrap
set ruler
set showcmd
set sidescroll=1
set wildmenu
set wildmode=longest:full,full

" Color scheme
set background=dark
syntax enable
colorscheme sunburst
if has('gui_macvim')
	set lines=24 columns=80
	set transparency=10
endif

" Commands that shell out tend to assume a bourne shell
set shell=sh

" If we don't have vim plug installed, install it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" vim-plug
call plug#begin('~/.vim/bundle')

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'fatih/vim-go'
Plug 'mustache/vim-mustache-handlebars'
Plug 'evidens/vim-twig'
Plug 'Shutnik/jshint2.vim'
Plug 'StanAngeloff/php.vim'
Plug 'mileszs/ack.vim'
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/local_vimrc'
Plug 'chr4/nginx.vim'

call plug#end()

" NERDTree
map <c-\> :NERDTreeToggle<CR>

" ctrlp
let g:ctrlp_follow_symlinks = 2
map <c-r> :CtrlPTag<CR>

" vim-twig
au BufReadPost *.swig set syntax=twig
au BufReadPost *.tpl set syntax=twig

" vim-go
let g:go_fmt_command = "goimports"

" ack.vim
let g:ackprg = 'ag'

" Useful for developing color themes
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
	\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
	\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
