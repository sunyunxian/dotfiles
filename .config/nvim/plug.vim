if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive' " 集成 git 操作
Plug 'tpope/vim-rhubarb' " 

if has("nvim")
  " Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " markdown 预览
  Plug 'mzlogin/vim-markdown-toc' " 生成目录
  Plug 'hoob3rt/lualine.nvim' " 配置 neovim 状态栏工具
  Plug 'kyazdani42/nvim-web-devicons' " 提供图标支持
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " 文件浏览器
  Plug 'kristijanhusak/defx-git' " 文件浏览时提供 git 状态显示
  Plug 'kristijanhusak/defx-icons' " 文件浏览的时图标支持
  Plug 'neovim/nvim-lspconfig' " lsp 支持
  Plug 'williamboman/nvim-lsp-installer' " 提供 lsp server 的管理
  Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim6.0' } " lsp 支持
  Plug 'folke/lsp-colors.nvim' " lsp 颜色支持
  Plug 'onsails/lspkind-nvim' " lsp 绑定
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' } " 代码高亮
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
endif

Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

call plug#end()
