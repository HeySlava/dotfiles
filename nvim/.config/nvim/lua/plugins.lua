local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- color schemas
Plug 'mhartington/oceanic-next'  -- colorscheme OceanicNext
Plug 'nikolvs/vim-sunbather'


Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

-- Plugins for makdown
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim'

-- Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

-- Russian
Plug 'lyokha/vim-xkbswitch'

vim.call('plug#end')
