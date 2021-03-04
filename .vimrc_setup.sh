#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

touch ~/.vimrc

echo \" My custom vimrc file >> ~/.vimrc
echo set guicursor= >> ~/.vimrc
echo set scrolloff=8 >> ~/.vimrc
echo set number >> ~/.vimrc
echo set relativenumber
echo set tabstop=4 softtabstop=4 >> ~/.vimrc
echo set shiftwidth=4 >> ~/.vimrc
echo set expandtab >> ~/.vimrc
echo set smartindent >> ~/.vimrc

echo call plug#begin\(\'~/.vim/plugged\'\) >> ~/.vimrc
echo   Plug \'junegunn/fzf\', { \'do\': { -> fzf#install\(\) } } >> ~/.vimrc
echo   Plug \'junegunn/fzf.vim\' >> ~/.vimrc
echo   Plug \'preservim/nerdtree\' >> ~/.vimrc
echo   Plug \'itchyny/lightline.vim\' >> ~/.vimrc
echo   Plug \'ayu-theme/ayu\' >> ~/.vimrc
echo call plug#end\(\) >> ~/.vimrc

echo set noshowmode >> ~/.vimrc

echo \" Colors - GUI stuff... >> ~/.vimrc
echo set termguicolors >> ~/.vimrc
echo let ayucolor=\"dark\" >> ~/.vimrc
echo colorscheme ayu >> ~/.vimrc

echo \" Remaps >> ~/.vimrc
echo let mapleader = \" \" >> ~/.vimrc
echo nnoremap \<leader\>pv :Vex\<CR\> >> ~/.vimrc
echo nnoremap \<leader\>\<CR\> :so ~/.vimrc\<CR\> >> ~/.vimrc
