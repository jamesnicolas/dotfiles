call plug#begin(stdpath('data') . '/plugged')
"Plug 'hashivim/vim-terraform'
"Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'overcache/NeoSolarized'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-rhubarb'
"Plug 'tpope/vim-surround'
Plug 'nvim-lualine/lualine.nvim'
Plug 'machakann/vim-sandwich'
 "Plug 'fatih/vim-go'
 "Plug 'davidhalter/jedi-vim'
"Plug 'mg979/vim-visual-multi'
"Plug 'vimwiki/vimwiki'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'yegappan/grep'
"Plug 'tpope/vim-unimpaired'
 "Plug 'preservim/nerdtree'
"Plug 'vim-jp/vimdoc-ja'
call plug#end()
filetype plugin indent on

syntax enable
set background=light
colorscheme NeoSolarized

syntax on

set nowrap

set hlsearch
set ignorecase
set smartcase

set autoindent

set ruler
set number
set wildmenu
set showcmd

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set smarttab

set clipboard=unnamed
set guioptions-=e
set guioptions-=g
set guioptions-=m
set guioptions-=r
set guioptions-=T
set guioptions-=L

lua << END
require('lualine').setup({
    options = {theme = 'solarized_light'}
})
END

command Evimrc execute 'edit' stdpath('config') . '/init.vim'
command Egvimrc execute 'edit' stdpath('config') . '/ginit.vim'

let g:neovide_cursor_animation_length=0.05
let g:neovide_cursor_trail_length=0.8

let g:neovide_refresh_rate=288

tnoremap <silent><C-h> <C-w>h
tnoremap <silent><C-j> <C-w>j
tnoremap <silent><C-k> <C-w>k
tnoremap <silent><C-l> <C-w>l
nnoremap <silent><C-h> <C-w>h
nnoremap <silent><C-j> <C-w>j
nnoremap <silent><C-k> <C-w>k
nnoremap <silent><C-l> <C-w>l
