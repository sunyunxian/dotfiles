" 颜色和字体外观 => Colors and Fonts "{{{
" ---------------------------------------------------------------------
set number " 是否显示行号
syntax enable " 开启高亮
set background=dark " 背景颜色
set title " 在窗口标题栏中显示文件名
" }}}

" Fu ndamentals "{{{
" ---------------------------------------------------------------------

" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

set nocompatible " 不与 vi 兼容，只使用 vim 的命令
" 文件编码
set fileencodings=utf-8,sjis,euc-jp,latin, gbk " 防止中文日文等乱码
set encoding=utf-8 " 使用 utf8 编码

"}}}


" 文件，备份和撤销 =>Files, backups, undo "{{{
" ---------------------------------------------------------------------
set nobackup " 不创建备份文件，即原有的文件结尾会有一个 ~
set nowb " 在覆写一个文件前进行备份，覆写成功后删除备份文件 
set noswapfile " 不创建交换文件，.swp 的交换文件主要为了防止系统崩溃后的恢复文件
set backupskip=/tmp/*,/private/tmp/* " 不会备份的文件类型
"}}}

" 状态栏 => Status line "{{{
" ---------------------------------------------------------------------
set showcmd " 底部显示操作命令
set cmdheight=2 " 执行命令时候的高度
set laststatus=2 " 是否显示状态，0 不显示，1 多窗口时候显示 2 显示
" }}}

" 其他 =>Files, backups, undo "{{{
" ---------------------------------------------------------------------

set noerrorbells " 出错的时候不发出声响提醒警告
set visualbell " 出错的时候使用视觉的提醒警告

set hlsearch " 搜索时候高亮显示结果
set scrolloff=10 " 垂直滚动时候，光标距离顶部/底部距离，单位是行
"let loaded_matchparen = 1
set shell=zsh " 使用的 shell 类型

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2
set ignorecase " 搜索的时候忽略大小写
" Be smart when using tabs ;)
set smarttab 
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r

"}}}
"

"  缩进 indents"{{{
" ---------------------------------------------------------------------
set autoindent " 自动缩进，即和上一行保持一样的缩进
set expandtab " 拓展 tab，因为不同的编辑器 tab 不一定一样，所以将 tab 转成 space
filetype plugin indent on " 开启类型检查，并且载入相关的缩进规则
set shiftwidth=4 " 按下 >> 增加缩进 << 取消一级缩进 == 取消全部缩进，每一级的字符数
set tabstop=2 " tab 转成缩少空格
set ai "Auto indent
set si "Smart indent
"}}}

" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline
"set cursorcolumn

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

"}}}

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript
" Fish
au BufNewFile,BufRead *.fish set filetype=fish

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

 "}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif

" 快捷键 "{{{
" ---------------------------------------------------------------------
runtime ./maps.vim
" }}}

"  Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

"}}}

" E xtras "{{{
" ---------------------------------------------------------------------
set exrc
"}}}

" vim: set foldmethod=marker foldlevel=0:

