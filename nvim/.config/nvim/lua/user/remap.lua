-- File Exploration
vim.keymap.set("n", "<leader>E", vim.cmd.NERDTreeFind)   -- Open explorer on current file
vim.keymap.set("n", "<leader>e", vim.cmd.NERDTreeToggle) -- Open explorer
vim.keymap.set("n", "<leader><Tab>", vim.cmd.bn)         -- Next buffer
vim.keymap.set("n", "<leader><S-Tab>", vim.cmd.bp)       -- Previous buffer
vim.keymap.set("n", "<leader>w", vim.cmd.bd)             -- Close buffer

-- Telescope
local telescope = require('telescope.builtin')

local function live_grep_with_filter()
  vim.ui.input({ prompt = 'Enter glob pattern (e.g., *.jsx): ' }, function(input)
    if input then
      telescope.live_grep({
        prompt_title = "Search " .. input .. "",
        search_dirs = { "." },
        glob_pattern = input,
        default_text = ""
      })
    end
  end)
end

vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', live_grep_with_filter, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})
vim.keymap.set('n', '<leader>km', telescope.keymaps)

-- Git
vim.keymap.set('n', '<leader>g', vim.cmd.Git)

-- Enable/Disable search hightlight
vim.keymap.set("n", "<leader>h", "<cmd>set invhls<CR>")

-- Copy/Paste
vim.keymap.set("n", "<leader>y", "<Esc>\"+y")
vim.keymap.set("n", "<leader>Y", "<Esc>\"+Y")
vim.keymap.set("n", "<leader>p", "<Esc>\"+p")
vim.keymap.set("n", "<leader>P", "<Esc>\"+P")

-- Keep cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Scrolling
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")       -- Searching
vim.keymap.set("n", "N", "Nzzzv")

-- Replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- All occurrences of word under cursor

-- Execute files
-- TODO: Make this language agnostic
vim.keymap.set("n", "<leader>xn", "<cmd>!node %<CR>")     -- Node
vim.keymap.set("n", "<leader>xd", "<cmd>!deno run %<CR>") -- Deno
