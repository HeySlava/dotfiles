set nocompatible              " be iMproved, required
filetype off                  " required

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'mbbill/undotree'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'flazz/vim-colorschemes'
" Plugin 'xolox/vim-colorscheme-switcher'
"
" Plugins for makdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.nvim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
" au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

" Setting for markdown
let g:vim_markdown_folding_disabled = 1
set conceallevel=2
autocmd FileType markdown normal zR
let g:mkdp_markdown_css = '~/dotfiles/vim/.github-markdown-css'
let g:vim_markdown_no_extensions_in_markdown = 1

" mapping for markdown
nnoremap <leader>mp :MarkdownPreview<cr>
nnoremap <leader>ms :MarkdownPreviewStop<cr>

set nu
set guicursor=
set incsearch
set undodir=~/.vim/undodir
set undofile
set scrolloff=8
set colorcolumn=79
set tabstop=4
set shiftwidth=4
set smarttab
set smartcase
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе
set autoindent
let python_highlight_all = 1
set t_Co=256

autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

syntax off "Включить подсветку синтаксиса

set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
set visualbell
set backspace=indent,eol,start whichwrap+=<,>,[,]
set showtabline=1

set wrap
set linebreak

set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

set clipboard=unnamedplus
set ruler

set autochdir

set hidden
let mapleader = " "

nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>


let $FZF_DEFAULT_COMMAND = 'rg --files'
vnoremap <leader>p "_dP
nnoremap <leader>p :Files! ~<CR>

" undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u


nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gs :G<CR>

set guifont=Monaco:h18
colorscheme OceanicNext

map pt :w !python3<CR>
map <leader>pt :!w python3<CR>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

