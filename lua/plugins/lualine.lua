return {
  "nvim-lualine/lualine.nvim", -- Statusline
  dependencies = { "kyazdani42/nvim-web-devicons", lazy = true },
  config = function()
    require("lualine").setup({
      options = { theme = "onenord" },
    })
  end,
}
