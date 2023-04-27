-- File Exploration
vim.keymap.set("n", "<leader>E", vim.cmd.Ex) -- Open explorer
vim.keymap.set("n", "<leader>b", vim.cmd.bn) -- Next buffer
vim.keymap.set("n", "<leader>B", vim.cmd.bp) -- Previous buffer

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
vim.keymap.set("n", "n", "nzzzv") -- Searching
vim.keymap.set("n", "N", "Nzzzv")

-- Replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- All occurrences of word under cursor
