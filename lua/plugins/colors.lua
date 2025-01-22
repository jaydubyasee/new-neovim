return {
  "rmehri01/onenord.nvim",
  priority = 1000, -- Ensure it loads first
  config = function()
    require('onenord').setup({
      theme = 'dark'
    })
    vim.cmd([[colorscheme onenord]])
  end,
}
