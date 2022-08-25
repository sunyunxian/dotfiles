"------------------------------------------
" My vimrc
" Author: sunyunxian
" Email: personal_sunyunxian@foxmail.com
"-----------------------------------------


" 颜色和字体外观 {{{
" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set encoding=utf-8 " 文件编码设置
set title " 在窗口标题栏中显示文件名
syntax enable " 开启高亮
set number " 是否显示行号
" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" }}}

" 其他问题
" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set backspace=2 " 删除键的问题
" let mapleader=',' " 前缀键修改
set mouse=a " 支持鼠标
set nocompatible " 不与 vi 兼容，只使用 vim 的命令
" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


" 搜索

set hlsearch " 搜索高亮
set ignorecase " 忽略大小写
set incsearch " 搜索模式下，自动跳到第一个匹配的结果
set smartcase " 如果第一个字母是大写那么第一个字符是大小写敏感的


"  缩进 indents
" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set autoindent " 自动缩进，即和上一行保持一样的缩进
set expandtab " 拓展 tab，因为不同的编辑器 tab 不一定一样，所以将 tab 转成 space
set shiftwidth=4 " 按下 >> 增加缩进 << 取消一级缩进 == 取消全部缩进，每一级的字符数
set tabstop=4 " tab 转成缩少空格
set softtabstop=0 " 关闭softtabstop 永远不要将空格和tab混合输入

set autoindent
set smartindent
set shiftround " 表示缩进列数对齐到 shiftwidth 值的整数倍，解决复制的时候带有的空格

set cursorline " 高亮所在的行
set colorcolumn=90 " 高亮 90 列
set textwidth=88 " 行宽
set wrap " 自动折行，即超过行宽后自动折行
set linebreak " 设置折行的规则，默认“^I!@*-+_;:,./?”会折行，而不会在单词内部折行
set scrolloff=5 " 垂直滚动时候，光标距离底部和顶部的位置（行数）

" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


" 状态栏 => Status line
" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set showcmd " 底部显示操作命令
set cmdheight=2 " 执行命令时候的高度
set laststatus=2 " 是否显示状态，0 不显示，1 多窗口时候显示 2 显示
" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


nnoremap <leader>sp :split<CR>
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>st :tab split<CR>


" filetype plugin(ftplugin) setting
filetype plugin on

set termguicolors " 打开 24 位真彩色支持
set t_Co=256
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

set noshowmode " 取消显示模式，使用了状态行进行了显示

" For dark version.
set background=dark " 背景颜色
" For light version.
" set background=light
" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'
" For better performance
let g:everforest_better_performance = 1
colorscheme everforest " 使用的主题

" 插件的配置，使用 vim-plug 进行插件的安装
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
Plug 'preservim/nerdtree'
" Plug 'sheerun/vim-polyglot'

" Make sure you use single quotes
" wakatime
Plug 'wakatime/vim-wakatime'

" vim-startify
" The fancy start screen for Vim.
" https://github.com/mhinz/vim-startify
Plug 'mhinz/vim-startify'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " 确保安装了
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim' " 状态栏工具

Plug 'sainnhe/everforest'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

" Plug Setting

" NERDTree {{{
" ++++++++++++++++++++++++++++++++++++++++++++++
autocmd VimEnter * NERDTree | wincmd p " 启动 vim 自动打开 NERDTree，并且焦点在编辑的文件上
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif " 只剩 NERDTree时候，自动关闭 NERDTree

let NERDTreeShowHidden=1 " 是否显示隐藏文件
let NERDTreeWinSize=25 " 定义窗口大小
let NERDTreeWinPos='left' " 定义窗口的位置，left 和 right
let NERDTreeIgnore = ['\.pyc$'] " 定义忽略文件

" 全局命令自定义快捷键
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
" ++++++++++++++++++++++++++++++++++++++++++++++
" }}}


let g:lightline = {
      \ 'colorscheme': 'everforest',
      \ }

" fzf 配置
let g:fzf_preview_window = ['right:50%', 'ctrl-/'] " 这个是默认配置，<C-/>切换预览窗口
noremap <C-p> :Files<CR>