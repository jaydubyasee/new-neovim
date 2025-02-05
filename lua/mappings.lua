vim.keymap.set('n', ';', ':', { desc = 'Easier command prompt' })
vim.keymap.set('i', 'jj', '<esc>', { desc = "Remap jj to esc" })

vim.keymap.set('n', '<F1>', '<cmd>Oil<cr>', { desc = "File explorer" })

vim.keymap.set('n', '<c-h>', '<c-w><c-h>', { desc = "Move to left window" })
vim.keymap.set('n', '<c-j>', '<c-w><c-j>', { desc = "Move to below window" })
vim.keymap.set('n', '<c-k>', '<c-w><c-k>', { desc = "Move to above window" })
vim.keymap.set('n', '<c-l>', '<c-w><c-l>', { desc = "Move to right window" })

vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<a-enter>', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
