local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug "neovim/nvim-lspconfig"

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

-- cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

-- luasnip
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

vim.call('plug#end')
