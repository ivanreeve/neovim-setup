":PlugInstall | PlugUpdate | PlugClean

call plug#begin(has('nvim') ? stdpath('data') . '/plugins' : '~/.vim/plugged')

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'

call plug#end()

lua << END
require("lualine").setup({ options = { theme = "palenight" } })
END

set encoding=UTF-8
set guifont=Fira\ Code:h12

colorscheme catppuccin-mocha
set number
set termguicolors

nnoremap <C-Bslash> :CHADopen<CR>
nmap <F9> :let &guifont = substitute(&guifont, ':h\(\d\+\)', '\=":h" . (submatch(1) - 1)', '')<CR>
nmap <F10> :let &guifont = substitute(&guifont, ':h\(\d\+\)', '\=":h" . (submatch(1) + 1)', '')<CR>

cd $HOME