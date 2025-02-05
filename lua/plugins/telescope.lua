return {
  "nvim-telescope/telescope.nvim", -- Fuzzy finder
  dependencies = { "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    },
  },
  config = function()
    local telescope = require("telescope")
    local lga_actions = require("telescope-live-grep-args.actions")
    -- first setup telescope
    telescope.setup({
      extensions = {
        live_grep_args = {
          auto_quoting = true, -- enable/disable auto-quoting
          -- define mappings, e.g.
          mappings = {         -- extend mappings
            i = {
              ["<C-k>"] = lga_actions.quote_prompt(),
              ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
            },
          },
          -- ... also accepts theme settings, for example:
          -- theme = "dropdown", -- use dropdown theme
          -- theme = { }, -- use own theme spec
          -- layout_config = { mirror=true }, -- mirror preview pane
        }
      }
    })

    -- then load the extensionj
    telescope.load_extension("live_grep_args")
    vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
    -- vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
    vim.keymap.set('n', '<c-p>', '<cmd>Telescope find_files<cr>')
  end,
}
