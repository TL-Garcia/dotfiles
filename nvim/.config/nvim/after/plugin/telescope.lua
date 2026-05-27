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

