" Plugins will be downloaded under the specified directory.
 call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
 " Declare the list of plugins.
 Plug 'tpope/vim-sensible'
 Plug 'junegunn/seoul256.vim'
 Plug 'nvim-lua/popup.nvim'
 Plug 'nvim-lua/plenary.nvim'
" Plug 'sirver/ultisnips'
 Plug 'gruvbox-community/gruvbox'
" Plug 'lervag/vimtex'
"    let g:tex_flavor='latex'
"    let g:vimtex_view_method='zathura'
"    let g:vimtex_quickfix_mode=0
 " List ends here. Plugins become visible to Vim after this call.
 call plug#end()

 
let mapleader = ' '

colorscheme gruvbox
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
set colorcolumn=100
set signcolumn=yes
