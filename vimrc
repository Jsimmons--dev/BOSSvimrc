set background=dark
syntax on
color mango
set tabstop=4
set t_Co=256
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'walm/jshint.vim'
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'
Plugin 'moll/vim-node'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'isRuslan/vim-es6'

filetype plugin indent on
command E Ex
nnoremap <leader>ff :%!js-beautify -j -q -B -f -<CR>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
autocmd bufwritepost .vimrc source ~/.vimrc
