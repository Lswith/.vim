" file ~/.vim/.vimrc
" author: Luke Swithenbank
call plug#begin('~/.vim/plugged')
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'w0rp/ale'
Plug '/usr/local/opt/fzf'
Plug 'hashivim/vim-terraform'
Plug 'elixir-editors/vim-elixir'
Plug 'chr4/nginx.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

set clipboard=unnamed
set backspace=indent,eol,start
syntax on
filetype plugin indent on
set autoindent
set smartindent

" Shfmt
let g:shfmt_extra_args = '-ci -i 2'
let g:shfmt_fmt_on_save = 1

" ColorScheme
set t_Co=256
set cursorline
colorscheme onehalfdark

" ALE
let g:ale_fix_on_save = 1
let g:ale_fixers = { 'sh': ['shfmt'] , 'elixir': ['mix_format'], 'yaml': ['prettier'] }

" Terraform
let g:terraform_fmt_on_save = 1

" Shfmt
let g:ale_sh_shfmt_options = '-ci -i 2'

" Yaml
let g:ale_yaml_yamllint_options = '-d "{rules:{indentation: {indent-sequences: consistent}"'
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

