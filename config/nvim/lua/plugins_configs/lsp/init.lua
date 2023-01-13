local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
Nums = 10
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)

   -- Mappings.
   -- See `:help vim.lsp.*` for documentation on any of the below functions
   local bufopts = { noremap = true, silent = true, buffer = bufnr }
   vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, bufopts)
   vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, bufopts)
   vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, bufopts)

   vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
   vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
   vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
   vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, bufopts)
   vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

require('lspconfig')['sumneko_lua'].setup {on_attach=on_attach}


require('lspconfig')['pylsp'].setup {on_attach=on_attach}

