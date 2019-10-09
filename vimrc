set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

    if has("unnamedplus") " X11 support
        set clipboard+=unnamedplus
          endif
          endif

" allow backspace in insert mode
set backspace=indent,eol,start

" use 4 spaces for tabs, and set tab width for specific filetypes
set expandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 tabstop=2
