local actions = require "telescope.actions"

require('telescope').setup({
  pickers = {
    buffers = {
      mappings = {
        i = {
          ["<c-d>"] = actions.delete_buffer + actions.move_to_top,
        }
      }
    }
  },
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      }
    },
    file_ignore_patterns = {
      "package%-lock.json"
    }
  }
})

return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.4',
  dependencies = { 'nvim-lua/plenary.nvim' }
}
