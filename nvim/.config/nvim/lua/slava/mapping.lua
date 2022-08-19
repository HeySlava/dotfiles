local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local noremap = {noremap = true}

map('n', '<leader>pt', ':w !python3<CR>', noremap)
map('n', '<leader>la', ':w !lua<CR>', noremap)
map('i', 'jk', '<ESC>', noremap)
map('n', 'Y', 'y$', noremap)

-- turn off hlsearch
map('n', ',<leader>', ':nohlsearch<CR>', noremap)

-- save file
map('n', '<leader>w', ':w! <cr>', noremap)

-- do not copy in unnamed buffer
map('v', '<leader>p', '"_dP', noremap)

-- git
map('n', '<leader>gf', ':diffget //2<CR>', noremap)
map('n', '<leader>gj', ':diffget //3<CR>', noremap)
map('n', '<leader>gs', ':G<CR>', noremap)


-- syntax maping
map('n', '<leader>so', ':syntax on<cr>', noremap)
map('n', '<leader>sf', ':syntax off<cr>', noremap)


map('n', '<leader>t', '<Plug>MarkdownPreviewToggle', noremap)

--Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files find_command=rg,--ignore,-L,--files<cr>', noremap)
map('n', '<leader>fn', '<cmd>Telescope find_files cwd=~/.config/nvim find_command=rg,--ignore,-L,--files<cr>', noremap)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', noremap)
map('n', '<leader>fo', '<cmd>Telescope oldfiles<cr>', noremap)
map('n', '<leader>fm', '<cmd>Telescope marks<cr>', noremap)

map('i', '<F1>', '<Nop>', noremap)
map('n', '<F1>', '<Nop>', noremap)

map('n', '<leader>pv', ':Ex<CR>', noremap)
map('n', '<leader>u', ':UndotreeToggle<CR>', noremap)

-- map('n', '<C-f>', '<cmd>silent !tmux neww ns<CR>', noremap)
