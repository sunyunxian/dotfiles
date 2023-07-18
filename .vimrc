"------------------------------------------
" Author: sunyunxian
" Email: personal_sunyunxian@foxmail.com
"-----------------------------------------

" Basic config
set nocompatible " 不与 vi 兼容，只使用 vim 的命令
set encoding=utf-8 " 文件编码设置
set nobackup " 不需要备份
set noswapfile " 禁止生成临时文件
set autoread " 文件自动检测外部更改
set title " 在窗口标题栏中显示文件名
set number " 是否显示行号
map <silent><F4> :set relativenumber!<CR> " f4 开启显示相对行号


syntax enable " 开启高亮

filetype on "开启文件类型检测
" set relativenumber " 相对行号
set backspace=2 " 删除键的问题
set mouse=a " 支持鼠标
set hlsearch " 搜索高亮
set ignorecase " 忽略大小写
set incsearch " 搜索模式下，自动跳到第一个匹配的结果
set smartcase " 如果第一个字母是大写那么第一个字符是大小写敏感的

"  缩进 indents
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


" 状态栏 => Status line
set showcmd " 底部显示操作命令
set cmdheight=2 " 执行命令时候的高度
set laststatus=2 " 是否显示状态，0 不显示，1 多窗口时候显示 2 显示
set termguicolors " 打开 24 位真彩色支持

set t_Co=256
noremap <C-n> :Lexplore<CR>  
