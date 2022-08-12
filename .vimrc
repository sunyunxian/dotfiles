
" 颜色和字体外观 => Colors and Fonts "
" ---------------------------------------------------------------------
set number " 是否显示行号
syntax enable " 开启高亮
set background=dark " 背景颜色
set title " 在窗口标题栏中显示文件名

set encoding=utf-8
set nocompatible " 不与 vi 兼容，只使用 vim 的命令

"  缩进 indents
" ---------------------------------------------------------------------
set autoindent " 自动缩进，即和上一行保持一样的缩进
set expandtab " 拓展 tab，因为不同的编辑器 tab 不一定一样，所以将 tab 转成 space
set shiftwidth=2 " 按下 >> 增加缩进 << 取消一级缩进 == 取消全部缩进，每一级的字符数
set tabstop=2 " tab 转成缩少空格
set ai "Auto indent
set si "Smart indent
set cursorline

" 状态栏 => Status line
" ---------------------------------------------------------------------
set showcmd " 底部显示操作命令
set cmdheight=2 " 执行命令时候的高度
set laststatus=2 " 是否显示状态，0 不显示，1 多窗口时候显示 2 显示

" filetype plugin(ftplugin) setting
filetype plugin on

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
" wakatime
Plug 'wakatime/vim-wakatime'

" vim-startify 
" The fancy start screen for Vim.
" https://github.com/mhinz/vim-startify
Plug 'mhinz/vim-startify'

"
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

