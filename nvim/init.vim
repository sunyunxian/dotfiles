" init.vim for config neovim

" basic config
lua require('basic')
" Packer plugins config
lua require('plugins')
" shortkey config
lua require('keybindings')
" lsp config
lua require('lsp/setup')

set background=dark " background config, or light if you want light mode

" config theme
" colorscheme gruvbox " https://github.com/ellisonleao/gruvbox.nvim
colorscheme zephyr " https://github.com/glepnir/zephyr-nvim


" 插件配置
" lua require('plugin-config/which-key')
" lua require('plugin-config/nvim-treesitter')
" lua require('plugin-config/telescope')
" lua require('plugin-config/nvim-autopairs')
" https://github.com/kyazdani42/nvim-tree.lua
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
" lua require('plugin-config/surround')
" lua require('plugin-config/comment')
" lua require('plugin-config/nvim-colorizer')
" lua require('plugin-config/rust-tools')

" lsp
" lua require('lsp/nvim-cmp-config')
" lua require('lsp/diagnostic_signs')
" lua require('lsp/language_servers')
"
" 