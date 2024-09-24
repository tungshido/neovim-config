return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    dependencies = {
      { 'nvim-treesitter/nvim-treesitter-textobjects' },
      { 'nvim-treesitter/nvim-treesitter-context', opts = { enable = true, mode = 'topline', line_numbers = true } }, --show code context
    },
    config = function()
      local treesitter = require 'nvim-treesitter.configs'

      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'markdown' },
        callback = function(ev)
          require('treesitter-context').disable()
        end,
      })
      treesitter.setup {
        ensure_installed = {
          'bash',
          'c',
          'diff',
          'html',
          'lua',
          'luadoc',
          'go',
          'gowork',
          'gomod',
          'gosum',
          'yaml',
          'json',
          'dockerfile',
          'markdown',
          'vim',
          'vimdoc',
        },
        indent = { enable = true },
        auto_install = true,
        sync_install = true,
        highlight = {
          enable = true,
          disable = { 'csv' },
        },
        textobjects = { select = { enable = true, lookahead = true } },
      }
      -- Prefer git instead of curl in order to improve connectivity in some environments
      require('nvim-treesitter.install').prefer_git = true
    end,
  },
}
