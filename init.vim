" file ~/.vim/.vimrc
" author: Luke Swithenbank
call plug#begin('~/.vim/plugged')
" FZF search in vim
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" Golang vim plugin
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Auto Completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Auto Formatter
Plug 'sbdchd/neoformat'

" Unused
" Plug 'Shougo/denite.nvim'
" Plug 'neomake/neomake'
call plug#end()

set clipboard=unnamed
set backspace=indent,eol,start
syntax on
filetype plugin indent on
set autoindent
set smartindent
set softtabstop=2
set shiftwidth=2

" ColorScheme
set t_Co=256
set cursorline


" let g:deoplete#enable_at_startup = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_basic_format_align = 1

autocmd BufNewFile,BufRead *.md set filetype=markdown

autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell

