" encoding
set encoding=utf-8
syntax enable

" space config
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set softtabstop=0

" autocmd FileType json,yaml,html,css,xml set sw=2 ts=2
autocmd FileType json set sw=2 ts=2
autocmd FileType yaml set sw=2 ts=2
autocmd FileType html set sw=2 ts=2
autocmd FileType css set sw=2 ts=2
autocmd FileType xml set sw=2 ts=2

" --------------------------------
" Plugins
" --------------------------------
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'mzlogin/vim-markdown-toc'
Plug 'gabrielelana/vim-markdown'
call plug#end()
" -------------------------------


