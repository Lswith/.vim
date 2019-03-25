" file ~/.vim/.vimrc
" author: Luke Swithenbank
call plug#begin('~/.vim/plugged')
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'hashivim/vim-terraform'
Plug 'elixir-editors/vim-elixir'
Plug 'chr4/nginx.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
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
colorscheme onehalfdark

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

let g:deoplete#enable_at_startup = 1
let g:neoformat_basic_format_trim = 1
let g:neoformat_basic_format_align = 1

autocmd BufNewFile,BufRead *.md set filetype=markdown

autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell

