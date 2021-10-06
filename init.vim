" Plugins will be downloaded under the specified directory.
 call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
 " Declare the list of plugins.

 Plug 'tpope/vim-sensible'
 Plug 'nvim-lua/popup.nvim'
 Plug 'nvim-lua/plenary.nvim'

 " LSP
 Plug 'neovim/nvim-lspconfig'
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

 " Snippets
 Plug 'rafamadriz/friendly-snippets'
 Plug 'L3MON4D3/LuaSnip'

 " Colorscheme
 Plug 'gruvbox-community/gruvbox'

 " Latex
 Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

 " List ends here. Plugins become visible to Vim after this call.
 call plug#end()

let g:python3_host_prog = '/usr/bin/python3'
let g:vimtex_compiler_progname = 'nvr'
let mapleader = ' '
inoremap jk <ESC>

colorscheme gruvbox
highlight ExtraWhiteSpace ctermbg=red guibg=red
match ExtraWhiteSpace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

syntax on

set clipboard=unnamedplus
setlocal spell
set spelllang=en_us
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set incsearch
set nohlsearch
set scrolloff=8
set termguicolors
set signcolumn=yes

" Add language server
lua << EOF
require'lspconfig'.pyright.setup{}
EOF

