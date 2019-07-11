" file ~/.vim/.vimrc
" author: Luke Swithenbank
call plug#begin('~/.vim/plugged')
" Git in Vim
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
" Golang vim plugin
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Auto Completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" For Denite features
Plug 'Shougo/denite.nvim'
" ALE for lang servers and lint/fixing
Plug 'w0rp/ale'
" Typescript filetype + syntax
Plug 'leafgarland/typescript-vim'

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
set expandtab
set softtabstop=2
set shiftwidth=2

" ColorScheme
set t_Co=256
set cursorline
colorscheme delek


let g:deoplete#enable_at_startup = 1

autocmd BufNewFile,BufRead *.md set filetype=markdown

autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell

" ALE Settings
let g:ale_linters_ignore = {'typescript': ['eslint']}
let g:ale_fixers = { 'typescript': ['tslint'] }
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'typescript': ['tslint'],
\   'json': ['jq'],
\}
