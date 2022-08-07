-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use "neovim/nvim-lspconfig"

    -- color schemas
    use 'mhartington/oceanic-next'  -- colorscheme OceanicNext
    use 'nikolvs/vim-sunbather'


    use 'vim-airline/vim-airline'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'tpope/vim-repeat'

    -- Plugins for makdown
    use 'plasticboy/vim-markdown'
    use 'iamcco/markdown-preview.nvim'

    -- Snippets
    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'

    -- Russian
    use 'lyokha/vim-xkbswitch'

    -- cmp
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- luasnip
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use 'godlygeek/tabular'

    -- Telescope
    use 'nvim-lua/plenary.nvim'
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}


    use 'mbbill/undotree'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins

if PACKER_BOOTSTRAP then
    require('packer').sync()
end
end)
