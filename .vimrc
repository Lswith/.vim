" file ~/.vim/.vimrc
" author: Luke Swithenbank
call plug#begin('~/.vim/plugged')
Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }
call plug#end()

set clipboard=unnamed
set backspace=indent,eol,start
syntax on
filetype plugin indent on

" Shfmt
let g:shfmt_extra_args = '-ci -i 2'
let g:shfmt_fmt_on_save = 1


