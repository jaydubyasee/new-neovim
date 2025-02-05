return {
  "nvim-telescope/telescope.nvim", -- Fuzzy finder
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup()
    vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
    vim.keymap.set('n', '<c-p>', '<cmd>Telescope find_files<cr>')
  end,
}
