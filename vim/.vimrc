set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'mbbill/undotree'

Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

Plugin 'flazz/vim-colorschemes'
" Plugin 'xolox/vim-colorscheme-switcher'

" Plugins for makdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.nvim'

call vundle#end()
let g:vim_markdown_folding_disabled = 1
set conceallevel=2
" g:vim_markdown_fenced_languages
autocmd FileType markdown normal zR
let g:mkdp_markdown_css = '~/dotfiles/vim/.github-markdown-css'
let g:vim_markdown_no_extensions_in_markdown = 1

set nu
set guicursor=
set ignorecase
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
" Автоотступ
set autoindent
" Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1
" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

syntax off "Включить подсветку синтаксиса

set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
set visualbell
" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Вырубаем черточки на табах
set showtabline=1

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

set clipboard=unnamedplus
set ruler

" let g:rooter_user_lcd = 1
" let g:rooter_manual_only = 1
set autochdir

set hidden
let mapleader = " "
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" remap for markdown
nnoremap <leader>om :MarkdownPreview<CR>
nnoremap <leader>cm :MarkdownPreviewStop<CR>

let $FZF_DEFAULT_COMMAND = 'rg --files'
vnoremap <leader>p "_dP
nnoremap <leader>p :Files! ~<CR>

" undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u


nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>

set guifont=Monaco:h18
colorscheme OceanicNext

nnoremap pt :w !python3<CR>
nnoremap <leader>pt :!w python3<CR>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
