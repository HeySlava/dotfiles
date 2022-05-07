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
nnoremap Y y$

let g:mapleader=" "
set clipboard+=unnamedplus
set ignorecase

call plug#begin('~/.config/nvim/plugged')

" color schemas
Plug 'mhartington/oceanic-next'  " colorscheme OceanicNext
Plug 'nikolvs/vim-sunbather'


Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

" Plugins for makdown
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Russian
Plug 'lyokha/vim-xkbswitch'

call plug#end()

let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"


" xkb-switch
let g:XkbSwitchEnabled = 1
let g:XkbSwitchIMappings = ['ru']


" colorscheme OceanicNext 
colorscheme sunbather 
syntax off

if (has('termguicolors'))
  set termguicolors
endif

" turn off search highlight
nnoremap ,<leader> :nohlsearch<CR>

set pumheight=5 

" autocomplete on/off
nnoremap <leader>ao <cmd>lua require('cmp').setup.buffer { enabled = true }<CR>
nnoremap <leader>af <cmd>lua require('cmp').setup.buffer { enabled = false }<CR>



set colorcolumn=79

autocmd FileType python map <buffer> <leader>pt :w<CR>:exec '!python3.10' shellescape(@%, 1)<CR>

map <leader>sl :!~/sqlite3 < %<CR>

vnoremap <leader>p "_dP

nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gs :G<CR>


" syntax maping
map <leader>so :syntax on<cr>
map <leader>sf :syntax off<cr>


" Setting for markdown
let g:vim_markdown_folding_disabled = 1
set conceallevel=2
autocmd FileType markdown normal zR
let g:mkdp_markdown_css = '~/dotfiles/vim/.github-markdown-css'
let g:vim_markdown_no_extensions_in_markdown = 1 

nmap <leader>t <Plug>MarkdownPreviewToggle
