":PlugInstall | PlugUpdate | PlugClean

call plug#begin(has('nvim') ? stdpath('data') . '/plugins' : '~/.vim/plugged')

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()

lua << END
require("ibl").setup()
require("lualine").setup({ options = { theme = "palenight" } })
require("nvim-autopairs").setup()
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
  },
}
END

set encoding=UTF-8
set guifont=Fira\ Code:h10

colorscheme catppuccin-mocha
set number
set termguicolors
se cursorline

nnoremap <C-Bslash> :CHADopen<CR>
nmap <F9> :let &guifont = substitute(&guifont, ':h\(\d\+\)', '\=":h" . (submatch(1) - 1)', '')<CR>
nmap <F10> :let &guifont = substitute(&guifont, ':h\(\d\+\)', '\=":h" . (submatch(1) + 1)', '')<CR>

cd $HOME
