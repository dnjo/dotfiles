#!/bin/bash
set -e

ln -s "$(pwd)/vimrc" ~/.vimrc
mkdir -p ~/.config/nvim
ln -s "$(pwd)/init.vim" ~/.config/nvim/init.vim
ln -s "$(pwd)/colors" ~/.config/nvim/colors

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | /bin/bash -s - ~/.cache/dein
nvim -c "call dein#install()" -c "exit"
