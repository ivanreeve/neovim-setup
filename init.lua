-- For most purposes, Lua within Neovim offers a superior performance profile. 

-- https://github.com/nanotee/nvim-lua-guide
-- https://neovim.io/doc/user/lua-guide.html
-- https://vim.rtorr.com/

-- Plugins
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin','~/AppData/Local/nvim-data/plugins')

-- Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug('preservim/nerdtree')
Plug('nvim-treesitter/nvim-treesitter')
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' }) 
Plug('ryanoasis/vim-devicons')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-lualine/lualine.nvim')
Plug('windwp/nvim-autopairs')
Plug('lukas-reineke/indent-blankline.nvim')

vim.call('plug#end')

-- Start Plugins
require('ibl').setup()
require('lualine').setup({ options = { theme = 'palenight' } })
require('nvim-autopairs').setup()
require('nvim-treesitter.configs').setup({ highlight = { enable = true, } }) -- Treesitter requires MinGW gcc compiler, :TSInstall <lang> to parse highlighter

-- Keymaps

-- Options
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.cmd('colorscheme catppuccin-macchiato')
