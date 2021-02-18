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

autocmd FileType sh,zsh,vim setlocal tabstop=2 shiftwidth=2 expandtab

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
  call dein#add('rust-lang/rust.vim')
  call dein#add('mileszs/ack.vim')
  call dein#add('christoomey/vim-tmux-navigator')

  call dein#end()
  call dein#save_state()
endif
let g:deoplete#enable_at_startup = 1

filetype plugin indent on
syntax enable

" Mappings
let mapleader = ","
map <silent> <C-n> :NERDTreeToggle<CR>

" fzf
" Search files from current directory
nmap <silent> <C-f> :Files<CR>
nmap <silent> <Leader>f :Ag<CR>

" vim-tmux-navigator
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Tab completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

set rtp+=$DOTFILES_FZF_PATH
set updatetime=500
