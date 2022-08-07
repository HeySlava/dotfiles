local opt = vim.opt
local g = vim.g

g.mapleader = ' '
g.python3_host_prog = '/usr/bin/python3'

opt.mouse=a  -- enable mouse set encoding=utf-8
opt.number = true
opt.scrolloff = 8

opt.tabstop=4
opt.softtabstop=4
opt.shiftwidth=4
opt.expandtab = true
-- opt.autoindent = true
opt.smartindent = true

opt.cmdheight = 1

opt.fileformat=unix

opt.clipboard = 'unnamedplus'
opt.ignorecase = true
opt.relativenumber = true
opt.fileencoding = 'utf-8'

opt.errorbells = false

opt.swapfile = false
opt.backup = false

vim.cmd("syntax off")
vim.cmd('colorscheme sunbather')

opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
