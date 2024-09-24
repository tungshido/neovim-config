return {
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local nvimtree = require 'nvim-tree'
    nvimtree.setup {
      disable_netrw = true,
      hijack_netrw = true,
      update_cwd = true,
      view = {
        number = true,
        relativenumber = true,
      },
    }
  end,
}
