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

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
}

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
  use({
	  'nikolvs/vim-sunbather',
	  config = function()
		    vim.cmd('colorscheme sunbather')
	  end
      })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')


  use 'mbbill/undotree'


  use 'nvim-lualine/lualine.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-repeat'


  -- Plugins for makdown
  use 'plasticboy/vim-markdown'
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })


  -- Snippets
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'

  -- Autodetect ansible type
  use 'pearofducks/ansible-vim'

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'L3MON4D3/LuaSnip'},     -- Required
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'hrsh7th/cmp-path'},
    {'hrsh7th/nvim-cmp'},     -- Required
  }
}

if PACKER_BOOTSTRAP then
    require('packer').sync()
end
end)
