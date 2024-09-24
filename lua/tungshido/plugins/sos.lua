return {
  'tmillr/sos.nvim',
  config = function()
    local sos = require 'sos'
    sos.setup {
      enabled = true,
      timeout = 20000,
      autowrite = false,
      save_on_cmd = 'some',
      save_on_bufleave = true,
    }
  end,
}
