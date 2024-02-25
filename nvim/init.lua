-- For most purposes, Lua within Neovim offers a superior performance profile. 

-- https://github.com/nanotee/nvim-lua-guide
-- https://neovim.io/doc/user/lua-guide.html
-- https://vim.rtorr.com/

-- Plugins | Warning! You may want to install these one by one because some installations may freeze

-- A little side note: You may want to visit the README files of each repo for more information/dependencies about each plugin

local vim = vim
local Plug = vim.fn['plug#']
local PLUGIN_PATH = '~/AppData/Local/nvim-data/plugins'

vim.call('plug#begin',PLUGIN_PATH)

-- Shorthand notation; fetches https://github.com/nvim-tree/nvim-tree.lua
Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-treesitter/nvim-treesitter')
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' }) 
Plug('ryanoasis/vim-devicons')
Plug('nvim-tree/nvim-web-devicons')
Plug('windwp/nvim-autopairs')
Plug('lukas-reineke/indent-blankline.nvim')
Plug('crispgm/nvim-tabline')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-telescope/telescope.nvim'); Plug('nvim-lua/plenary.nvim'); -- requires BurntSushi/ripgrep, sharkdp/fd to work

vim.call('plug#end')

-- === Initialize Plugins === --

-- LUALINE --

require('lualine').setup({
  options = {
    disabled_filetypes = {
      winbar = {'NvimTree'}
    }
  },
  winbar = {
    lualine_c = {{'filename',path=4}}
  },
  inactive_winbar = {
    lualine_c = {{'filename',path=4}}
  }
})

-- TABLINE --

require('tabline').setup({
	show_icon = true,
	brackets = { ' ', ' ' }
})

-- NVIM TREE --

require('nvim-tree').setup()

-- INDENT GUIDE --
 
require('ibl').setup() -- Scope requires treesitter to be set up

-- AUTO PAIRS --

require('nvim-autopairs').setup()

-- TREESITTER --

require('nvim-treesitter.configs').setup({ highlight = { enable = true, } }) -- Treesitter requires MinGW gcc compiler, :TSInstall <lang> | All, to parse highlighter

-- === Keymaps === --

vim.keymap.set('n', '<F1>', ':set number!<CR>')
vim.keymap.set('n', '<F2>', ':set wrap!<CR>')
vim.keymap.set('n', '<F3>', ':Telescope find_files<CR>')
vim.keymap.set('n', '<F6>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<F7>', ':TagbarToggle<CR>')


-- === Commands === --

vim.cmd('colorscheme catppuccin-macchiato')
vim.cmd('cd C:/Users/Ivan/Desktop/Ivan/Projects')

-- === Options === --

vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.autochdir = true
