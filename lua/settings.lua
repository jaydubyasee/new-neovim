-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.wrap = false

vim.opt.cursorline = true

vim.opt.clipboard:append("unnamedplus")

vim.opt.inccommand = "split"
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.swapfile = false

vim.opt.foldmethod = 'expr'
vim.opt.foldminlines = 2
vim.opt.foldlevel = 1
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
