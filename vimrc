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

"change directory open command
nnoremap <leader>e :Ex<cr>
nnoremap <leader>j :J<cr>
nnoremap <leader>r :set relativenumber!<cr> 
filetype plugin indent on
nnoremap <leader>f :%!js-beautify -j -q -B --good-stuff -f -<CR>
nnoremap <leader>s <C-w><C-v><C-l>:e $MYVIMRC<cr>

"open color scheme
let colors = "mango"
nnoremap <leader>co <C-w><C-v><C-l>:e ~/.vim/colors/mango.vim<cr>
autocmd bufwritepost .vimrc source ~/.vimrc

