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
