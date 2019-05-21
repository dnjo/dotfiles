set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable
set number
set clipboard=unnamed
set backspace=indent,eol,start

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('scrooloose/nerdtree')
  call dein#add('junegunn/fzf.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-commentary')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

map <C-n> :NERDTreeToggle<CR>
map ; :Files<CR>

set rtp+=/usr/local/opt/fzf
set updatetime=500