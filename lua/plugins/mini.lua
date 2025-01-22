return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.ai').setup()
    require('mini.comment').setup()
    require('mini.files').setup({

    })
    require('mini.icons').setup()
    require('mini.pairs').setup()
    require('mini.pick').setup({
      window = {
        config = {

        }
      },
      mappings = {
        move_down = '<c-j>',
        move_up = '<c-k>',
      }
    })
    require('mini.surround').setup()
  end
}
