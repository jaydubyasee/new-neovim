-- Auto-format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
  group = vim.api.nvim_create_augroup("LspFormat", { clear = true }),
})

-- Set indent to 2 spaces for Lua files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
    vim.bo.expandtab = true
  end,
  group = vim.api.nvim_create_augroup("LuaIndent", { clear = true }),
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "minifiles",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<F1>", "<cmd>lua MiniFiles.close()<cr>", {})
  end
})
