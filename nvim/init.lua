-- For most purposes, Lua within Neovim offers a superior performance profile. 

-- https://github.com/nanotee/nvim-lua-guide
-- https://neovim.io/doc/user/lua-guide.html
-- https://vim.rtorr.com/

-- Plugins | Warning! You may want to install these one by one because some installations may freeze
local vim = vim
local Plug = vim.fn['plug#']
local PLUGIN_PATH = '~/AppData/Local/nvim-data/plugins'

vim.call('plug#begin',PLUGIN_PATH)

-- Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-treesitter/nvim-treesitter')
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' }) 
Plug('ryanoasis/vim-devicons')
Plug('nvim-tree/nvim-web-devicons')
Plug('windwp/nvim-autopairs')
Plug('lukas-reineke/indent-blankline.nvim')
Plug('crispgm/nvim-tabline')
Plug('nvim-lualine/lualine.nvim')

vim.call('plug#end')

-- Start Plugins
require('lualine').setup()
require('tabline').setup({
	show_icon = true,
	brackets = { ' ', ' ' }
})
require('nvim-tree').setup()
require('ibl').setup() -- Scope requires treesitter to be set up
require('nvim-autopairs').setup()
require('nvim-treesitter.configs').setup({ highlight = { enable = true, } }) -- Treesitter requires MinGW gcc compiler, :TSInstall <lang> to parse highlighter

-- Keymaps
vim.keymap.set('n', '<F6>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<F7>', ':TagbarToggle<CR>')

-- Options
vim.cmd('colorscheme catppuccin-macchiato')
vim.cmd('cd C:/Users/Ivan/Desktop/Ivan/Projects/CompProg2Y/CPPProjects/HuffmanLibrary')

vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.autochdir = true
