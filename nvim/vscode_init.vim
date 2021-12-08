set mouse=a  " enable mouse set encoding=utf-8
set number
set noswapfile
set scrolloff=7

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype indent on      " load filetype-specific indent files

inoremap jk <esc>
let g:mapleader=" "
set clipboard+=unnamedplus


call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'

call plug#end()

" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>

nmap <Esc> <Cmd>call VSCodeNotify('notebook.cell.quitEdit')<CR>
vnoremap <leader>p "_dP


xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine
