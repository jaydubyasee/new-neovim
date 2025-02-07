vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
require('init')
require('lazyload')
require('settings')
require('mappings')
require('autocmds')

vim.cmd([[
hi CursorLine guifg=#2e3440 guibg=#88c0d0
]])
