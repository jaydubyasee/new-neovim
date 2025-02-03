return {
  "neovim/nvim-lspconfig", -- LSP support
  config = function()
    local lspconfig = require("lspconfig")
    local on_attach = function()
      vim.keymap.set("n", "<A-enter>", "<cmd>lua vim.lsp.buf.code_action()<cr>")
    end
    lspconfig.jsonls.setup({})
    lspconfig.intelephense.setup({
      init_options = {
        licenceKey = os.getenv('HOME') .. '/intelephense/licence.txt'
      }
    })
    lspconfig.phpactor.setup({
      on_attach = on_attach
    })
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT", -- Neovim uses LuaJIT
          },
          diagnostics = {
            globals = { "vim" }, -- Recognize the `vim` global
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true), -- Make the server aware of Neovim runtime files
            checkThirdParty = false,                           -- Disable third-party library checking
          },
          telemetry = {
            enable = false, -- Disable telemetry for performance
          },
        },
      },
    })                        -- Lua language server
    lspconfig.ts_ls.setup({}) -- TypeScript/JavaScript language server
  end,
}
