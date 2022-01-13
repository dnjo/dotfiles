set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable
colorscheme darcula
set number
set clipboard^=unnamed,unnamedplus
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

  call dein#add('junegunn/fzf.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-commentary')
  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('shime/vim-livedown')
  call dein#add('907th/vim-auto-save')
  call dein#add('tpope/vim-fugitive')
  call dein#add('rbgrouleff/bclose.vim')
  call dein#add('francoiscabrol/ranger.vim')
  call dein#add('mbbill/undotree')

  call dein#end()
  call dein#save_state()
endif
let g:deoplete#enable_at_startup = 1

let g:loaded_python_provider = 0
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_node_provider = 0
let g:python3_host_prog = $DOTFILES_NEOVIM_PYTHON_PATH

filetype plugin indent on
syntax enable

" Mappings
let mapleader = ","

" ranger 
let g:ranger_map_keys = 0
nmap <silent> <c-n> :RangerCurrentFileExistingOrNewTab<CR>

" Buffers
nmap <silent> <Leader>n :bn<CR>
nmap <silent> <Leader>p :bp<CR>
nmap <silent> <Leader>l :ls<CR>

" Save and quit
nmap <silent> <Leader>w :w<CR>
nmap <silent> <Leader>wq :wq<CR>
nmap <silent> <Leader>wQ :wqa<CR>
nmap <silent> <Leader>q :q<CR>
nmap <silent> <Leader>Q :qa<CR>

" Tabs
nmap <silent> <c-t> :tabnew<CR>
nmap <silent> <c-q> :tabprevious<CR>
nmap <silent> <c-e> :tabnext<CR>

" fzf
" Search files from current directory
nmap <silent> <Leader>f :Files<CR>
nmap <silent> <Leader>F :Ag<CR>

" vim-tmux-navigator
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" vim-commentary
" CTRL-/ to comment line and block
nmap <silent> <c-_> gcc
vmap <silent> <c-_> gc

" vim-fugitive
nmap <silent> <Leader>gb :Gblame<CR>
nmap <silent> <Leader>gs :G<CR>
nmap <silent> <Leader>gp :G push<CR>

" undotree
nmap <silent> <Leader>u :UndotreeToggle<CR>

" Tab completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

set rtp+=$DOTFILES_FZF_PATH
set updatetime=500
