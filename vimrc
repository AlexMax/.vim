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
set guifont=DejaVu_Sans_Mono:h12
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

" Use ripgrep for :grep
if executable("rg")
	set grepprg=rg\ --vimgrep\ --no-heading
	set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" If we don't have vim plug installed, install it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" vim-plug
call plug#begin('~/.vim/bundle')

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'fatih/vim-go'
Plug 'evidens/vim-twig'
Plug 'StanAngeloff/php.vim'
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/local_vimrc'
Plug 'chr4/nginx.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ziglang/zig.vim'

call plug#end()

" vim-lsp
if executable('javascript-typescript-stdio')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'javascript-typescript-stdio',
        \ 'cmd': {server_info->['javascript-typescript-stdio']},
        \ 'whitelist': ['typescript'],
        \ })
endif

" Useful for developing color themes
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
	\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
	\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
