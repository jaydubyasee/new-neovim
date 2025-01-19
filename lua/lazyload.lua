local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  -- Example plugins
  spec = {
    { import = 'plugins' },
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
        require("nvim-treesitter.configs").setup({
          highlight = { enable = true },
          indent = { enable = true },
          ensure_installed = { 'lua' },
          sync_install = false,
          auto_install = true,
          ignore_install = {},
        })
      end,
    },
    {
      "hrsh7th/nvim-cmp", -- Autocompletion plugin
      dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "L3MON4D3/LuaSnip", -- Snippets
      },
      config = function()
        local cmp = require("cmp")
        cmp.setup({
          mapping = {
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
          },
          sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "buffer" },
            { name = "path" },
          }),
        })
      end,
    },
    {
      "nvim-lualine/lualine.nvim", -- Statusline
      dependencies = { "kyazdani42/nvim-web-devicons", lazy = true },
      config = function()
        require("lualine").setup({
          options = { theme = "tokyonight" },
        })
      end,
    },
    {
      "nvim-telescope/telescope.nvim", -- Fuzzy finder
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
        require("telescope").setup()
      end,
    },
    {
      "folke/tokyonight.nvim", -- Tokyo Night color scheme
      priority = 1000,         -- Ensure it loads first
      config = function()
        vim.cmd([[colorscheme tokyonight]])
      end,
    }
  },
})
