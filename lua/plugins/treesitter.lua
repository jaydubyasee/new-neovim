return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = { 'lua', 'php', 'javascript', 'html', 'twig', 'json' },
      sync_install = false,
      auto_install = true,
      ignore_install = {},
    })
  end,
}
