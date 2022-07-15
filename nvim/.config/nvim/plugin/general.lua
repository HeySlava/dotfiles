local opt = vim.opt

opt.mouse=a  -- enable mouse set encoding=utf-8
opt.number = true
opt.scrolloff = 7

opt.tabstop=4
opt.softtabstop=4
opt.shiftwidth=4
opt.expandtab = true
opt.autoindent = true

opt.fileformat=unix

opt.clipboard = 'unnamedplus'
opt.ignorecase = true
opt.fileencoding = 'utf-8'

vim.api.nvim_create_autocmd('BufEnter', {
    pattern = '*.py',
    command = 'set colorcolumn=79'
})

vim.cmd("syntax off")

vim.cmd('colorscheme sunbather')

-- set.backupdir = ~/.config/nvim/backup//
-- set.directory = ~/.config/nvim/swap//
-- set.undodir = ~/.config/nvim/undo//
