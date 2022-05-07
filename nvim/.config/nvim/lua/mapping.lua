local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local noremap = {noremap = true}

vim.g.mapleader = ' '

map('n', '<leader>pt', ':w !python3<CR>', noremap)
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

-- 
-- set pumheight=5 
-- 
-- " autocomplete on/off
-- nnoremap <leader>ao <cmd>lua require('cmp').setup.buffer { enabled = true }<CR    >
-- nnoremap <leader>af <cmd>lua require('cmp').setup.buffer { enabled = false }<C    R>


