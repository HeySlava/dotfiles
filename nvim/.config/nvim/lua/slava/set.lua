
vim.g.python3_host_prog = "/usr/bin/python3"

vim.opt.mouse="a"  -- enable mouse set encoding=utf-8
vim.opt.number = true
vim.opt.scrolloff = 8

vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.cmdheight = 1

vim.opt.clipboard = "unnamedplus"
vim.opt.ignorecase = true
vim.opt.relativenumber = true
vim.opt.fileencoding = "utf-8"

vim.opt.errorbells = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.cmd("syntax off")

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.g.netrw_preview   = 1
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize   = 30
vim.g.mapleader = " "

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.py",
    command = "set colorcolumn=79,88"
})

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.arch",
    command = "UltiSnipsAddFiletypes arch"
})

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.git/COMMIT_EDITMSG",
    command = "set colorcolumn=50,72"
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*docker-compose*"},
  command = "set filetype=yaml.docker-compose",
})
