
" --------------------------------
" encoding
" --------------------------------
set encoding=utf-8
let mapleader=','

set history=1000
syntax on " 打开语法高亮
set nocompatible " 不和 vi 语法兼容，直接使用 vim 的命令
set mouse=a " 支持鼠标
set number " 显示行号
set showmode " 在底部显示当前模式
set showcmd " 命令模式下，显示底部正在输入的指令
set textwidth=80 "每行显示最大的字符

set laststatus=2 "是否显示状态栏

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tab config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set softtabstop=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile
set noerrorbells " 出错后不要出声
set visualbell " 出错后屏幕闪烁
set autoread " 外部修改文件后，会发出提示

set ruler "状态栏显示光标所在位置
set t_Co=256 "启用 256 色
" Search
set showmatch " 自动高亮对应的小、中、大括号
set hlsearch " 高亮搜索结果
set incsearch " 每输入一个字符时候，就会自动跳到第一个匹配的结果
set ignorecase " 搜索忽略大小写
set cursorline " 高亮光标所在行
set linebreak " 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行，也就是说不会分裂一个完整的单词


filetype on
filetype plugin on
filetype indent on
set autoindent
set smartindent
set shiftround
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd FileType bash json,yaml,html,css,xml set sw=2 ts=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType shell set sw= 4ts=4
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
