require('slava.packer-config')
require('slava.telescope-config')
require('slava.lsp-config')
require('slava.settings')
require('slava.mapping')
require('slava.markdown')


vim.api.nvim_create_autocmd('BufEnter', {
    pattern = '*.py',
    command = 'set colorcolumn=88'
})

vim.api.nvim_create_autocmd('BufEnter', {
    pattern = '*.arch',
    command = 'UltiSnipsAddFiletypes arch'
})
