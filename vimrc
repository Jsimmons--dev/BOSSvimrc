set background=dark
set number
syntax on
color mango
set tabstop=4
set t_Co=256
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'walm/jshint.vim'
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'
Plugin 'moll/vim-node'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'isRuslan/vim-es6'

call vundle#end()

nnoremap <leader>j :J<cr>
nnoremap <leader>r :set relativenumber!<cr> 
filetype plugin indent on
nnoremap <leader>ff :%!js-beautify -j -q -B -f -<CR>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
autocmd bufwritepost .vimrc source ~/.vimrc
